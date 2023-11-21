package com.example.controller;

import com.example.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/home/")
public class HomeController {
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private UserService userService;

    @RequestMapping("index")
    public String index(HttpSession session, Model model) {

        if (session.getAttribute("username") != null) {
            String username = (String) session.getAttribute("username");
            model.addAttribute("username", username);
        }

        return "home/index";
    }

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String showLoginPage() {

        return "account/login";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String login(@RequestParam String username, @RequestParam String password, Model model, HttpSession session) {
        boolean isAuthenticated = userService.authenticateUser(username, password);

        if (isAuthenticated) {
            session.setAttribute("username", username);
            model.addAttribute("username", username);
            return "redirect:/home/index";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "account/login";
        }
    }

    @RequestMapping(value = "register", method = RequestMethod.GET)
    public String showregisternPage() {
        return "account/register";
    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public String register(@RequestParam String username, @RequestParam String password, Model model, HttpSession session) {

        if (userService.isUserExists(username)) {
            model.addAttribute("error", "Username already exists");
            return "account/register";
        }
        userService.saveUser(username,password);
        session.setAttribute("username", username); // Thêm dòng này
        return "redirect:/home/index";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        // Xóa thuộc tính "username" khỏi session để đăng xuất người dùng
        session.removeAttribute("username");
        return "redirect:/home/index";
    }

    @RequestMapping(value = "edit", method = RequestMethod.GET)
    public String hienThiTrangChinhSuaThongTin(HttpSession session, Model model) {
        // Kiểm tra xem người dùng có đăng nhập không
        if (session.getAttribute("username") != null) {
            String username = (String) session.getAttribute("username");
            model.addAttribute("username", username);
            return "account/edit";
        }
        else {
            // Nếu chưa đăng nhập, chuyển hướng đến trang đăng nhập
            return "redirect:/home/login";
        }
    }

    @RequestMapping(value = "edit", method = RequestMethod.POST)
    public String chinhSuaThongTin(@RequestParam String username, @RequestParam String newPassword, Model model, HttpSession session) {
        // Kiểm tra xem người dùng có đăng nhập không
        if (session.getAttribute("username") != null) {
            userService.updateUserPassword(username, newPassword);
            model.addAttribute("error", "Change password complete!");
            return "redirect:/home/index";
        } else {
            // Nếu chưa đăng nhập, chuyển hướng đến trang đăng nhập
            return "redirect:/home/login";
        }
    }
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String deleteAccount(@RequestParam("usernameToDelete") String usernameToDelete, HttpSession session) {
        // Xử lý xóa tài khoản ứng với usernameToDelete
        //
        userService.deleteUser(usernameToDelete);
        session.removeAttribute("username");
        return "redirect:/home/login";
    }
}

