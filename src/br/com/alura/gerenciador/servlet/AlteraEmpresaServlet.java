package br.com.alura.gerenciador.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/alteraEmpresa")
public class AlteraEmpresaServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Date abertura = null;

		System.out.println("alterando empresa");

		String nomeEmpresa = request.getParameter("nome");
		String dataAbertura = request.getParameter("data");
		String paramId = request.getParameter("id");
		Integer id = Integer.valueOf(paramId);

		try {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			abertura = sdf.parse(dataAbertura);
		} catch (ParseException e) {
			throw new ServletException(e);
		}
		
		System.out.println(id);
		
		Banco banco = new Banco();
		Empresa empresa = banco.buscaPorId(id);
		empresa.setNome(nomeEmpresa);
		empresa.setDataAbertura(abertura);
		
		response.sendRedirect("listaEmpresas");
		
	}

}
