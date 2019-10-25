package web.add.ad;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.Arrays;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;

import com.mongodb.BasicDBList;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;

import web.clas.Details;
import web.clas.Reply;


/**
 * Servlet implementation class Ad
 */
@WebServlet("/ad.add")
public class Ad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ad() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type = request.getParameter("radio");
		request.setAttribute("radio", type);
		request.getRequestDispatcher("ad.add.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MongoClient mc = web.connection.ConnectionManager.getMongo();
		MongoDatabase db = web.connection.ConnectionManager.getDb("Assessment3");
		MongoCollection<Document> ads = db.getCollection("Ads");
		int c = 0;
		int c1 = 0;
		int id, idi = 0;
		MongoCursor<Document> cursor = ads.find().iterator();
		while (cursor.hasNext()) {
			Document doc = cursor.next();
			idi = doc.getInteger("ID");
			c++;
		}
		if (c != 0) {
			id = idi;
		} else {
			id = 0;
		}
		String type = request.getParameter("radio");
		String title=request.getParameter("title");
		String city=request.getParameter("city");
		String zpcode=request.getParameter("code");
		String desc=request.getParameter("des");
		String email=request.getParameter("email");
		String number=request.getParameter("phone").toString();
		Details det = new Details(1,type,title,city,zpcode,desc,email,number);
		BasicDBList list = new BasicDBList();
		Document document = new Document("ID", id+1).append("type", det.getType()).append("title", det.getTitle()).append("city", det.getCity())
				.append("zpcode", det.getZpcode()).append("descr", det.getDesc()).append("email", det.getEmail()).append("phone", det.getNumber()).append("replies", list);
		ads.insertOne(document);
		request.setAttribute("data",det);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
