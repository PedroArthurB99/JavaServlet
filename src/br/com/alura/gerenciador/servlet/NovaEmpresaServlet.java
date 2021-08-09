package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/novaEmpresa")
public class NovaEmpresaServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("cadastrando nova empresa");
		
		String nomeEmpresa = request.getParameter("nome");
		
		Empresa empresa = new Empresa();
		empresa.setNome("Alura");
		
		Banco banco = new Banco();
		banco.adiciona(empresa);
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<body>");
		out.println("empresa " + nomeEmpresa + " cadastrada com sucesso");
		out.println("</body>");
		out.println("</html>");
		
	}

}
