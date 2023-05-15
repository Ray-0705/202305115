package com.web.store.controller;
import java.sql.*;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MemberShipController {
		
	
	@GetMapping("/login")
	public String login() {		
		return"login";
	}
	
	@GetMapping("/memberCreate")
	public String memberCreate() {
		return"memberCreate";
	}
	
	@GetMapping("/memberShipCenter")
	public String memberShipCenter() {
		return"memberShipCenter";
	}
	
	@GetMapping("/cancelEdit")
	public ModelAndView cancelEdit(HttpSession session) {
		session.setAttribute("alert", null);
		return new ModelAndView("redirect:/memberShipCenter");
	}
	
	@GetMapping("/memberEdit")
	public String memberEdit() {			
		return"memberEdit";			
	}			
	
	@GetMapping("/test")
	public String test() {			
		return "test";
	}
	
	
	
	@PostMapping(value = "loginCheck",params = {"account","passWord"})
	public ModelAndView loginCheck(Model model,HttpSession session,			
			@RequestParam(value="account") String account,			
			@RequestParam(value="passWord") String password) {	
			
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String databaseUser = "root";
			String databasePassword = "root";
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/item", databaseUser, databasePassword);

			//從database取出要比對的資料
			Statement st =  conn.createStatement();
			String sql="select * from projectmembership where account='"+account+"'and password='"+password+"'";	
			ResultSet rs=st.executeQuery(sql);	
			
			if (rs.next()){
				
				
//				model.addAttribute("id",rs.getInt("id"));
//				model.addAttribute("account",rs.getString("account"));
//				model.addAttribute("username",rs.getString("username"));
//				model.addAttribute("password",rs.getString("password"));
//				model.addAttribute("age",rs.getInt("age"));
//				model.addAttribute("tel",rs.getInt("tel"));
//				model.addAttribute("cellphone",rs.getInt("cellphone"));
//				model.addAttribute("email",rs.getString("email"));				
				
				session.setAttribute("id",rs.getInt("id"));
				session.setAttribute("account",rs.getString("account"));
				session.setAttribute("username",rs.getString("username"));
				session.setAttribute("password",rs.getString("password"));
				session.setAttribute("age",rs.getInt("age"));
				session.setAttribute("tel",rs.getInt("tel"));
				session.setAttribute("cellphone",rs.getInt("cellphone"));
				session.setAttribute("email",rs.getString("email"));
				
				//此項為傳回login時用來彈出提醒視窗的判斷值
				session.setAttribute("alert", "loginSuccess");
				
				conn.close();
				rs.close();						
			}		
			
		} catch (Exception e) {			
			e.printStackTrace();
		}
			
		return new ModelAndView("redirect:/memberShipCenter");			
		
		    }
	
	@PostMapping(value = "memberCreate",params = {"account","username","passWord","age","tel","cellphone","email"})
	public ModelAndView memberCreate(Model model,HttpSession session,		
			@RequestParam(value="account") String account,			
			@RequestParam(value="username") String username,
			@RequestParam(value="passWord") String password,
			@RequestParam(value="age") int age,
			@RequestParam(value="tel") int tel,
			@RequestParam(value="cellphone") int cellphone,
			@RequestParam(value="email") String email){		
			
			
						
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String databaseUser = "root";
			String databasePassword = "root";
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/item", databaseUser, databasePassword);
			String SQL_accountCheck="select * from projectmembership where account=?";
			String SQL_insert = "insert into projectmembership (account, username, password, age, tel, cellphone, email) values (?,?,?,?,?,?,?)";
		try	(PreparedStatement st =  conn.prepareStatement(SQL_accountCheck)){
				st.setString(1, account);
				ResultSet accountCheck=st.executeQuery();
				if (accountCheck.next()) {
					
					session.setAttribute("account",account);
					session.setAttribute("username",username);					
					session.setAttribute("age",age);
					session.setAttribute("tel",tel);
					session.setAttribute("cellphone",cellphone);
					session.setAttribute("email",email);					
					
					//此項為傳回memberCreate時用來彈出提醒視窗的判斷值
					session.setAttribute("alert", "detectSameAccount");
					
					conn.close();
					st.close();	
					
					return new ModelAndView("redirect:/memberCreate");
				}
			}
		
		try (PreparedStatement st_insert =  conn.prepareStatement(SQL_insert)){				
			st_insert.setString(1, account);
			st_insert.setString(2, username);
			st_insert.setString(3, password);
			st_insert.setInt(4, age);
			st_insert.setInt(5, tel);
			st_insert.setInt(6, cellphone);
			st_insert.setString(7, email);
			st_insert.executeUpdate();		
			
			//此項為清掉創建帳號時可能產生的暫存資訊
			//session.invalidate();
			//此項為傳回login時用來彈出提醒視窗的判斷值
			session.setAttribute("alert", "createSuccess");
			
			conn.close();
			st_insert.close();	
		}	
		
		} catch (Exception e) {			
			e.printStackTrace();
		}
			
			
			return new ModelAndView("redirect:/login");			
		
		    }
	
	@PostMapping(value = "memberUpdate",params = {"username","passWord","age","tel","cellphone","email","account"})
	public ModelAndView memberUpdate(Model model,HttpSession session,				
			@RequestParam(value="username") String username,
			@RequestParam(value="passWord") String password,
			@RequestParam(value="age") int age,
			@RequestParam(value="tel") int tel,
			@RequestParam(value="cellphone") int cellphone,
			@RequestParam(value="email") String email,
			@RequestParam(value="account") String account){	
			
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String databaseUser = "root";
			String databasePassword = "root";
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/item", databaseUser, databasePassword);
			String SQL_Update = "UPDATE projectmembership SET username=?, password=?, age=?, tel=?, cellphone=?, email=? WHERE account=?";
		try (PreparedStatement st =  conn.prepareStatement(SQL_Update)){
			st.setString(1, username);
			st.setString(2, password);
			st.setInt(3, age);
			st.setInt(4, tel);
			st.setInt(5, cellphone);
			st.setString(6, email);
			st.setString(7, account);
			
			st.executeUpdate();	
			
			conn.close();
			st.close();				
		}
		
		} catch (Exception e) {			
			e.printStackTrace();
		}
			//此項為傳回memberShipCenter時更新資料用的暫存資訊
			session.setAttribute("username",username);					
			session.setAttribute("age",age);
			session.setAttribute("tel",tel);
			session.setAttribute("cellphone",cellphone);
			session.setAttribute("email",email);
		
			//此項為傳回memberShipCenter時用來彈出提醒視窗的判斷值
			session.setAttribute("alert", "editSuccess");
		
		return new ModelAndView("redirect:/memberShipCenter");
		    }
	
	@GetMapping("/logout")
	public ModelAndView logout(Model model,HttpSession session) {
		session.invalidate();		
		model = null;
		return new ModelAndView("redirect:/login");
	}
		}

