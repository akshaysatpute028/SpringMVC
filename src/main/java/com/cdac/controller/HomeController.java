package com.cdac.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cdac.model.User;
import com.cdac.service.UserService;

@Controller
public class HomeController {
	@Autowired
	private User user;
	
	@Autowired
	private UserService userService;
	
	//View Through Model
	@RequestMapping("/home")
	public String getHomer(Model m)
	{
		m.addAttribute("name","Akshay");
		return "home";
	}
	
	//View Through ModelAndView
	@RequestMapping("/help")
	public ModelAndView gethelp()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("help");
		mv.addObject("name", "Mr. Ravi Payal");
		return mv;
	}
	
	// Registration Form
	@RequestMapping("/reg")
	public String getform()
	{
		return "userform";
	}
	
	//Post Through HttpServletRequest and Model
	@RequestMapping(path="/processuser", method=RequestMethod.POST)
	public String getuser(HttpServletRequest req, Model m)
	{ /// retrieve data comes from view
		String name=req.getParameter("name");
		int age=Integer.parseInt(req.getParameter("age"));
		String address=req.getParameter("address");
		String phone=req.getParameter("phone");
		
		// add data to model to send it on view
		m.addAttribute("name",name);
		m.addAttribute("age",age);
		m.addAttribute("address",address);
		m.addAttribute("phone",phone);
		return "processuser";
	}
	
	//Post Through @RequestParam and Model
	@RequestMapping(path="/processuser1", method=RequestMethod.POST)
	public String getuser1(@RequestParam("name") String name,@RequestParam("age")int age,
			@RequestParam("address") String address,@RequestParam("phone") String phone,Model m) {  // Retrieve data coming from view
		
		m.addAttribute("name",name);  // Add data to model to send it on view
		m.addAttribute("age",age);
		m.addAttribute("address",address);
		m.addAttribute("phone",phone);
		return "processuser";
	}
	
	//Registration through MVC Using @ModelAttribute
	@RequestMapping(path="/processuser2", method=RequestMethod.POST)
	public String getuser2(@ModelAttribute User user) { 
		
		int i=userService.saves(user);
		
		if(i<1)
			System.out.println("insertion fail");
		else
			System.out.println("insertion sucessful");
		
		return "userdetails";
	}
		
	// SELECT USER BY ID Form
	@RequestMapping("/user1")
	public String getUserByIdForm(HttpServletResponse res,HttpStatus status) {
		return "userbyidform";
	}
	
	@RequestMapping(path="/getuser", method=RequestMethod.POST)
	public ModelAndView getUserById(HttpServletRequest req,HttpServletResponse res,HttpStatus status) {
		ModelAndView mv=new ModelAndView();
		String ID=req.getParameter("id");
		if(ID.equals("")) {
			String stat="<div class=\"alert alert-danger\">\r\n"
					+ "    <strong>Error !</strong> Field is empty .\r\n"
					+ "  </div>";
			mv.setViewName("userbyidform");
			mv.addObject("status",stat);
			return mv;
		}
		else {
			int id=Integer.parseInt(ID);
			user=userService.findById(id);
			
			if(user.getId()!=id) {
				String stat="<div class=\"alert alert-danger\">\r\n"
						+ "    <strong>No Content found !</strong> User does not exist.\r\n"
						+ "  </div>";
				mv.setViewName("userbyidform");
				mv.addObject("status",stat);
				return mv;
			}
			else {
				status=HttpStatus.OK;
				mv.setStatus(status);
				res.setStatus(status.value());
				mv.setViewName("viewuser1");
				mv.addObject("getuser",user);
				return mv;
			}
		}
	}
	
	@RequestMapping(path="/fetchAll")
	public ModelAndView getAllUsers() {
		ModelAndView mv=new ModelAndView();
		List<User> userList=userService.fetchAll();
		mv.setViewName("allusers");
		mv.addObject("userList",userList);
		return mv;
	}
	
	//Edit User
	@RequestMapping(path="/edit/{id}")
	public ModelAndView updateUserById(@PathVariable int id,HttpServletRequest req) {
		ModelAndView mv=new ModelAndView();
		user=userService.findById(id);
		mv.setViewName("updateuser");
		mv.addObject("getuser",user);
		return mv;
	}
	
	//Update User
	@RequestMapping(path="/update", method=RequestMethod.POST)
	public ModelAndView updateUser(HttpServletRequest req) {
		ModelAndView mv=new ModelAndView();
		int id=Integer.parseInt(req.getParameter("id"));
		user.setId(id);
		user.setName(req.getParameter("name"));
		user.setAge(Integer.parseInt(req.getParameter("age")));
		user.setAddress(req.getParameter("address"));
		user.setPhone(req.getParameter("phone"));
		
		String stats="<div class=\"alert alert-success\">\r\n"
				+ "    <strong>Success !</strong> User updated successfully.\r\n"
				+ "  </div>";

		int stat=userService.update(id);
		if(stat>0) {
			System.out.println("Upadte Success !");
		}
		mv.addObject("status",stats);
		mv.addObject("getuser",user);
		mv.setViewName("allusers");
		return mv;
	}
	
	//Delete User
	@RequestMapping(path="/delete/{id}")
	public String deleteUser(@PathVariable int id) { 
		
		int i=userService.delete(id);
		
		if(i<1)
			System.out.println("Deletion failed !");
		else
			System.out.println("Deletion sucessfull !");
		
		return "redirect:/fetchAll";
	}
	
	//Contact
	@RequestMapping("/contact")
	public String getContact() {
		return "contactus";
	}

}
