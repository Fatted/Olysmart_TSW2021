package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Carrello;

/**
 * Servlet implementation class AumentaDiminuisciQuantitąCarrello
 */
@WebServlet("/AumentaDiminuisciQuantitąCarrello")
public class AumentaDiminuisciQuantitąCarrello extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AumentaDiminuisciQuantitąCarrello() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		try(PrintWriter out=response.getWriter()){
			String attivitą=request.getParameter("action");
			int id=Integer.parseInt(request.getParameter("id"));
			
			ArrayList<Carrello> listacarrello=(ArrayList<Carrello>)request.getSession().getAttribute("listacarrello");
			
			if(attivitą!=null && id>=1) {
				if(attivitą.equals("aumenta")) {
					for(Carrello carrello:listacarrello) {
						if(carrello.getCodice()==id) {
							int quantitą=carrello.getQuantita();
							quantitą++;
							carrello.setQuantita(quantitą);
							response.sendRedirect("carrello.jsp");
						}
					}
				}
				
				if(attivitą.equals("diminuisci")) {
					for(Carrello carrello:listacarrello) {
						if(carrello.getCodice()==id && carrello.getQuantita()>1) {
							int quantitą=carrello.getQuantita();
							quantitą--;
							carrello.setQuantita(quantitą);
							break;
							
						}
					}
					response.sendRedirect("carrello.jsp");
				}
			}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}
