package pe.edu.unsch.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import pe.edu.unsch.entities.Usuario;
import pe.edu.unsch.service.UsuarioService;

@Controller
public class LoginController {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@GetMapping({"/", "/login"})
	public String login(Model model) {
		model.addAttribute("title", "Login | PCCargaProject");
		return "views/login/index";
	}
	
	@PostMapping("/login")
	public String login(HttpServletRequest request, HttpSession session, Model model) {
		model.addAttribute("user", new Usuario());
		
		Usuario user = this.usuarioService.login(request.getParameter("username"), request.getParameter("password"));
		if (user == null) {
			model.addAttribute("error", "Cuenta inválida");
			return "redirect:/login";
		} else {
			session.setAttribute("usuario", user.getUsuario());
			return "redirect:/admin/home";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("usuario");
		return "redirect:/login";
	}
	
	
}
