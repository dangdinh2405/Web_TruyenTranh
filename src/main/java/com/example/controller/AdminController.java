package com.example.controller;

import com.example.model.Story;
import com.example.model.User;
import com.example.service.StoryService;
import com.example.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/admin/")
public class AdminController {

    @Autowired
    private StoryService storyService;

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/addUser", method = RequestMethod.GET)
    public String showAddUserForm() {
        return "admin/addUser";
    }

    @RequestMapping(value = "/addUser", method = RequestMethod.POST)
    public String saveNewUser(@RequestParam String username, @RequestParam String password, Model model) {
        if (userService.isUserExists(username)) {
            model.addAttribute("error", "Username already exists");
        }else
        {
            userService.saveUser(username, password);
        }
        return "redirect:/admin/page";
    }

    @RequestMapping("page")
    public String page(HttpSession session, Model model){

        String username = (String) session.getAttribute("username");
        if (!"admin".equals(username)) {
            model.addAttribute("error", "Access denied. You must be an admin to view this page.");
            return "admin/page";
        }

        List<User> userList = userService.getAllUser();
        model.addAttribute("userList", userList);
        return "admin/page";
    }

    @RequestMapping(value = "/editUser/{userId}" , method = RequestMethod.GET)
    public String editUser(@PathVariable String userId, Model model) {
        User user = userService.getUserByID(userId);
        model.addAttribute("user", user);
        return "admin/editUser";
    }

    @RequestMapping(value = "/editUser", method = RequestMethod.POST)
    public String editUser(@ModelAttribute("user") User user) {
        userService.updateUserPassword(user.getUsername(), user.getPassword());
        return "redirect:/admin/page";
    }

    @RequestMapping(value = "/saveUser", method = RequestMethod.POST)
    public String saveUser(@RequestParam String username, @RequestParam String password) {
        userService.updateUserPassword(username,password);
        return "redirect:/admin/page";
    }

    @RequestMapping(value = "/deleteUser/{userId}",method = RequestMethod.GET)
    public String deleteUser(@PathVariable String userId) {
        // Delete user based on userId
        userService.deleteUserID(userId);
        return "redirect:/admin/page";
    }

    @RequestMapping("view_review")
    public String view_review() {
        return "admin/view_review";
    }

    @RequestMapping("view_book")
    public String view_book() {
        return "admin/view_book";
    }

    @RequestMapping("view_book2")
    public String view_book2() {
        return "admin/view_book2";
    }

    @RequestMapping("view_book3")
    public String view_book3() {
        return "admin/view_book3";
    }

    @RequestMapping("view_skill1")
    public String view_skill1() {
        return "admin/view_skill1";
    }

    @RequestMapping("view_read_skill1")
    public String view_read_skill1() {
        return "admin/view_read_skill1";
    }

    @RequestMapping("view_skill2")
    public String view_skill2() {
        return "admin/view_skill2";
    }

    @RequestMapping("view_read_skill2")
    public String view_read_skill2() {
        return "admin/view_read_skill2";
    }

    @RequestMapping("view_read_book2")
    public String view_read_book2() {
        return "admin/view_read_book2";
    }

    @RequestMapping("view_read_book3")
    public String view_read_book3() {
        return "admin/view_read_book3";
    }

    @RequestMapping("view_read")
    public String view_read() {
        return "admin/view_read";
    }

    @RequestMapping("view_all_completed")
    public String view_all_completed() {
        return "admin/view_all_completed";
    }

    @RequestMapping("view_vanhoc")
    public String view_vanhoc(Model model) {
        List<Story> stories = storyService.getAllStories("Văn Học");
        model.addAttribute("stories", stories);
        return "admin/view_vanhoc";
    }

    @RequestMapping("view_truyenngan")
    public String view_truyenngan(Model model) {
        List<Story> stories = storyService.getAllStories("Truyện Ngắn");
        model.addAttribute("stories", stories);

        return "admin/view_truyenngan";
    }

    @RequestMapping("view_tanvan")
    public String view_tanvan(Model model) {
        List<Story> stories = storyService.getAllStories("Tản Văn");
        model.addAttribute("stories", stories);

        return "admin/view_tanvan";
    }

    @RequestMapping("view_kynang")
    public String view_kynang(Model model) {
        List<Story> stories = storyService.getAllStories("Kỹ Năng");
        model.addAttribute("stories", stories);

        return "admin/view_kynang";
    }

    @RequestMapping("view_essay1")
    public String view_essay1() {
        return "admin/view_essay1";
    }

    @RequestMapping("view_read_essay1")
    public String view_read_essay1() {
        return "admin/view_read_essay1";
    }

    @RequestMapping("view_essay2")
    public String view_essay2() {
        return "admin/view_essay2";
    }

    @RequestMapping("view_read_essay2")
    public String view_read_essay2() {
        return "admin/view_read_essay2";
    }

    @RequestMapping("view_essay3")
    public String view_essay3() {
        return "admin/view_essay3";
    }

    @RequestMapping("view_read_essay3")
    public String view_read_essay3() {
        return "admin/view_read_essay3";
    }

    @RequestMapping("view_story1")
    public String view_story1() {
        return "admin/view_story1";
    }

    @RequestMapping("view_read_story1")
    public String view_read_story1() {
        return "admin/view_read_story1";
    }

    @RequestMapping("view_story2")
    public String view_story2() {
        return "admin/view_story2";
    }

    @RequestMapping("view_read_story2")
    public String view_read_story2() {return "admin/view_read_story2";}

    @RequestMapping("view_story3")
    public String view_story3() {
        return "admin/view_story3";
    }

    @RequestMapping("view_read_story3")
    public String view_read_story3() {return "admin/view_read_story3";}

}
