package com.dxc.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.dxc.MongoBooking;
import com.dxc.MongoCustomer;
import com.dxc.MongoHotel;
import com.dxc.pojos.Admin;
import com.dxc.pojos.Booking;
import com.dxc.pojos.Customer;
import com.dxc.pojos.Hotel;

@Repository
@Service
public class CustomerDao 
{
	@Autowired
	MongoCustomer cust;
	
	@Autowired
	MongoHotel monh; 
	
	@Autowired
	MongoBooking monbook;
	Hotel h;
	
	Random random=new Random();
	
	public void customerregister(Customer c)
    {
		System.out.println("inside customer register");
		List<Customer> list=new ArrayList<Customer>();
		list=cust.findAll();
		cust.save(c);
    }
	
	public boolean customerlogin(Customer c)
	{
		
		
		List<Customer> clist=new ArrayList<Customer>();
		clist=cust.findAll();
		System.out.println(clist.size());
		
			for(Customer c1:clist)
			{
				if(c1.getMobile().equals(c.getMobile()) && c1.getPass().equals(c.getPass()))
				{
					    
					return true;
				}
			}
			return false;
			
	}
	
	public List<Hotel> listofhotels()
	   {
		   List<Hotel> hlist =  new ArrayList<Hotel>();
		  hlist= monh.findAll(); 
		  System.out.println(hlist);
	       return hlist;
	   }
	
	public List<Hotel> detailsofhotel(Hotel h)
	{
		List<Hotel> hlist =  new ArrayList<Hotel>();
		  hlist= monh.findAll();
		     for(int i=0;i<hlist.size();i++)
		     {
			 if(h.getRecognitionno()==hlist.get(i).getRecognitionno())
			 {
			    return monh.findHotelByrecognitionno(h.getRecognitionno());
			 }
		     }
			return  monh.findHotelByrecognitionno(h.getRecognitionno());
	}
	
	
	public List<Booking> bookhotel(Booking b,Hotel h,String mobile)
	{
		
		List<Booking> blist=new ArrayList<>();
		blist=monbook.findAll();
		
		List<Hotel> hlist=new ArrayList<>();
		hlist=monh.findAll();

		
		List<Customer> clist=new ArrayList<>();
		clist=cust.findAll();
		
		
			for(Hotel h1:hlist)
			{
				if(h1.getRecognitionno()==b.getRecognitionno())
				{
				if(h1.getAvailablerooms()>=b.getNoofrooms())
				{
			
						int finalrooms=h1.getAvailablerooms()-b.getNoofrooms();
						
						System.out.println(finalrooms);
						h1.setAvailablerooms(finalrooms);
						
						int bid=random.nextInt(50);
						b.setBookid(bid);
						monh.save(h1);
						b.setStatus("room booked");
						monbook.save(b);
						return monbook.findBookingBybookid(b.getBookid());
				}
				}
			}
		return monbook.findBookingBybookid(b.getBookid());
		
		}
	
	
	
	public List<Booking> requestCustomer(int bookid)
	{
		List<Booking> blist=new ArrayList<>();
		blist=monbook.findAll();
		for(Booking b:blist)
		{
		         if(bookid==b.getBookid())
				{	 
		        	 b.setStatus("requesting for cancel room");
		        	 monbook.save(b);
			          return monbook.findBookingBybookid(bookid);
				}
		}
		return monbook.findBookingBybookid(90);
	}
	public List<Booking> pastbookings(String mobile)
	{
	System.out.println(mobile);
	
		return monbook.findBookingBymobile(mobile);
	}
}