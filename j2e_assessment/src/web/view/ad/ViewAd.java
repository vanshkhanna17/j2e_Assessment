package web.view.ad;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

import org.bson.Document;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;

import web.clas.Details;

/**
 * Servlet implementation class ViewAd
 */
@WebServlet("/viewad")
public class ViewAd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewAd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type = request.getParameter("radio");
		MongoClient mc = web.connection.ConnectionManager.getMongo();
		MongoDatabase db = web.connection.ConnectionManager.getDb("Assessment3");
		MongoCollection<Document> ads = db.getCollection("Ads");
		MongoCursor<Document> cursor = ads.find(Filters.eq("type",type)).iterator();
		List<Details> list = new ArrayList<>();
		if(cursor.hasNext()) {
		while(cursor.hasNext()) {
			Document d = (Document) cursor.next();
			Details det = new Details(d.getInteger("ID"),d.getString("type"),d.getString("title"),d.getString("city"),d.getString("zpcode"),d.getString("descr"),d.getString("email"),d.getString("phone"));
			list.add(det);
		}
		request.setAttribute("list", list);
		request.getRequestDispatcher("viewad.jsp").forward(request, response);
	}
		else {
			request.setAttribute("data", "0");
			request.getRequestDispatcher("view.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
	}
}
