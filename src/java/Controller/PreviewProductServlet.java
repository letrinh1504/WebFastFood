
package Controller;

import DAO.FeedbackDB;
import DAO.ProductDB;
import Models.Account;
import Models.Feedback;
import Models.Product;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;


public class PreviewProductServlet extends HttpServlet {

    
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id=Integer.parseInt(request.getParameter("id"));
        HttpSession session = request.getSession();
        ProductDB pdb=new ProductDB();
        Product p=pdb.getProductByID(id);
        FeedbackDB fdb= new FeedbackDB();
        
//        
//        
//        
        Account a = (Account) session.getAttribute("acc");
        if(a== null){

            List<Feedback> listFb = fdb.getAllFeedback(id);

           int avgRating = fdb.avgRating(id);
           request.setAttribute("listFb", listFb);
           request.setAttribute("p", p);
           request.setAttribute("avgRating", avgRating);
           request.getRequestDispatcher("PreviewProduct.jsp").forward(request, response);      
        }
        else{
             List<Feedback> listFb = fdb.getAllFeedback(id);
            int avgRating = fdb.avgRating(id);
             request.setAttribute("avgRating", avgRating);
            request.setAttribute("listFb", listFb);
            request.setAttribute("p", p);
           
            request.getRequestDispatcher("PreviewProduct.jsp").forward(request, response); 

        }
        
    }

 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }



}
