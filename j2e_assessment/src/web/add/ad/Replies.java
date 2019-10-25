package web.add.ad;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;

import com.mongodb.BasicDBList;
import com.mongodb.BasicDBObject;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.mongodb.client.model.Updates;
import com.mongodb.client.result.UpdateResult;

import web.clas.Reply;

/**
 * Servlet implementation class Replies
 */
@WebServlet("/replies")
public class Replies extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Replies() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		request.setAttribute("id", id);
		request.getRequestDispatcher("reply.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MongoClient mc = web.connection.ConnectionManager.getMongo();
		MongoDatabase db = web.connection.ConnectionManager.getDb("Assessment3");
		MongoCollection<Document> ads = db.getCollection("Ads");
		
		String id = request.getParameter("id");
		MongoCursor<Document> cursor = ads.find(Filters.eq("ID",Integer.parseInt(id))).iterator();
		String title=request.getParameter("name");
		String email=request.getParameter("email");
		String number=request.getParameter("phone").toString();
		Reply r = new Reply(title,email,number);
		List<Reply> rl = new ArrayList<>();
		while(cursor.hasNext()) {
			Document d = (Document) cursor.next();
			ArrayList rev = (ArrayList) d.get("replies");
			if(rev.size()!=0) {
				for(Object re: rev) {
					Document rep = (Document) re ;
				Reply r1 = new Reply(rep.getString("name"),rep.getString("email"),rep.getString("number"));
				r1.setId(rl.size()+1);
				rl.add(r1);
				}
				rl.add(r);
			}
			else {
				rl.add(r);
			}
		}
		BasicDBList dbl = new BasicDBList();
		for(Reply r1:rl) {
			dbl.add(new BasicDBObject("name",r1.getName()).append("email", r1.getEmail()).append("phone",r1.getNumber()));
			System.out.println(r1.getName()+" "+r1.getEmail()+" "+r1.getNumber());
		}
		UpdateResult ur =  ads.updateOne(Filters.eq("ID",Integer.parseInt(id)),  Updates.set("replies", dbl));
		System.out.println(ur.getMatchedCount() + "  " + ur.getModifiedCount());
		System.out.println(id);
		request.setAttribute("data1",rl);
		request.getRequestDispatcher("index.jsp").forward(request, response);

}
}
