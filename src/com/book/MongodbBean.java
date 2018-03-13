package com.book;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Vector;


import org.bson.Document;



import com.mongodb.Block;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Filters;
import com.book.MongodbBean;

public class MongodbBean {
	public static  String[] Book_bid;
	public static String[] User_uname;
	public static String[] Stu_sname;
	public static String[] bookinfo = new String[10]; 
	//public static int num=0;
	
    public static String[] getBook_bid(){

	        String[] book_bid_temporary = new String[100];    
	         // ���ӵ� mongodb ����
	        MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
	        //�˴��������û�����������֤��ʽ��½
	        @SuppressWarnings("deprecation")
	        DB db = mongoClient.getDB( "library" );  //���ӵ����ݿ�library
	        DBCollection coll = db.getCollection("books");  //��ȡlibrary���ݿ��м���book
	        System.out.println("Collection userInfo selected successfully");
	        DBCursor cursor = coll.find();  
       
           int num=0; 
	        while (cursor.hasNext()) {    
	           DBObject show = cursor.next();
	                 
	           @SuppressWarnings("rawtypes")
	           Map show1 = show.toMap();  //���������show(Bson����)ת��ΪMap����
	           String tobid = (String)show1.get("bid");  //��ȡMap���ֶ���Ϊbid������ֵ                      
	           book_bid_temporary[num] = tobid;         //�����ݿ��в�ѯ�Ļ����Ŵ洢������book_bid                              
	          num++;
	         }
	         Book_bid = new String[num];   //���ݲ�ѯ���ݱ����������ĵ���Ϣiֵ��ȷ�����շ������鳤��
	        for(int j=0;j<num;j++){
	            Book_bid[j] = book_bid_temporary[j];
	           
	            	        }
			return Book_bid;	        
	    }
    
    
     public static String[] getBook_bname(){

        String[] book_bname_temporary = new String[100];    //����һ������Ϊ100����ʱ��Ż����ŵ�һά����    
         // ���ӵ� mongodb ����
        MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
        //�˴��������û�����������֤��ʽ��½
        @SuppressWarnings("deprecation")
        DB db = mongoClient.getDB( "library" );  //���ӵ����ݿ�library
        DBCollection coll = db.getCollection("books");  //��ȡlibrary���ݿ��м���books
        System.out.println("Collection userInfo selected successfully");
        DBCursor cursor = coll.find();  //��ѯ����books���ĵ���Ϣ
   
        int q=0; 
        while (cursor.hasNext()) {     //��������books�������ĵ���Ϣ
           DBObject show = cursor.next();
                 
           @SuppressWarnings("rawtypes")
           Map show1 = show.toMap();  //���������show(Bson����)ת��ΪMap����
           String tobname = (String)show1.get("bname");  //��ȡMap���ֶ���Ϊbid������ֵ                      
           book_bname_temporary[q] = tobname;         //�����ݿ��в�ѯ�Ļ����Ŵ洢������book_bid                              
           q++;
         }
        String[] book_bname = new String[q];   //���ݲ�ѯ���ݱ����������ĵ���Ϣiֵ��ȷ�����շ������鳤��
        for(int j=0;j<q;j++){
            book_bname[j] = book_bname_temporary[j];         
            	        }
		return book_bname;	    
    }
     public static String[] getBook_bnumber(){

         String[] book_bnumber_temporary = new String[100];    //����һ������Ϊ100����ʱ��Ż����ŵ�һά����    
          // ���ӵ� mongodb ����
         MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
         //�˴��������û�����������֤��ʽ��½
         @SuppressWarnings("deprecation")
         DB db = mongoClient.getDB( "library" );  //���ӵ����ݿ�library
         DBCollection coll = db.getCollection("books");  //��ȡlibrary���ݿ��м���books
         System.out.println("Collection userInfo selected successfully");
         DBCursor cursor = coll.find();  //��ѯ����good���ĵ���Ϣ
    
         int q=0; 
         while (cursor.hasNext()) {     //��������good�������ĵ���Ϣ
            DBObject show = cursor.next();
                  
            @SuppressWarnings("rawtypes")
            Map show1 = show.toMap();  //���������show(Bson����)ת��ΪMap����
            String tobnumber = (String)show1.get("bnumber");  //��ȡMap���ֶ���Ϊbid������ֵ                      
            book_bnumber_temporary[q] = tobnumber;         //�����ݿ��в�ѯ�Ļ����Ŵ洢������book_bid                              
            q++;
          }
         String[] book_bnumber = new String[q];   //���ݲ�ѯ���ݱ����������ĵ���Ϣiֵ��ȷ�����շ������鳤��
         for(int j=0;j<q;j++){
             book_bnumber[j] = book_bnumber_temporary[j];
//             System.out.println( book_bid[j] );          
             	        }
 		return book_bnumber;	    
     }
     public static String[] getBook_btype(){

         String[] book_btype_temporary = new String[100];    //����һ������Ϊ100����ʱ��Ż����ŵ�һά����    
          // ���ӵ� mongodb ����
         MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
         //�˴��������û�����������֤��ʽ��½
         @SuppressWarnings("deprecation")
         DB db = mongoClient.getDB( "library" );  //���ӵ����ݿ�library
         DBCollection coll = db.getCollection("books");  //��ȡlibrary���ݿ��м���book
         System.out.println("Collection userInfo selected successfully");
         DBCursor cursor = coll.find();  //��ѯ����book���ĵ���Ϣ
    
         int q=0; 
         while (cursor.hasNext()) {     //��������book�������ĵ���Ϣ
            DBObject show = cursor.next();
                  
            @SuppressWarnings("rawtypes")
            Map show1 = show.toMap();  //���������show(Bson����)ת��ΪMap����
            String tobnumber = (String)show1.get("btype");  //��ȡMap���ֶ���Ϊid������ֵ                      
            book_btype_temporary[q] = tobnumber;         //�����ݿ��в�ѯ�Ļ����Ŵ洢������good_sid                              
            q++;
          }
         String[] book_btype = new String[q];   //���ݲ�ѯ���ݱ����������ĵ���Ϣiֵ��ȷ�����շ������鳤��
         for(int j=0;j<q;j++){
             book_btype[j] = book_btype_temporary[j];
//             System.out.println( book_bid[j] );          
             	        }
 		return book_btype;	    
     }
     public static String[] getBook_bplot(){

         String[] book_bplot_temporary = new String[100];   
          // ���ӵ� mongodb ����
         MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
         //�˴��������û�����������֤��ʽ��½
         @SuppressWarnings("deprecation")
         DB db = mongoClient.getDB( "library" );  
         DBCollection coll = db.getCollection("books");  
         System.out.println("Collection userInfo selected successfully");
         DBCursor cursor = coll.find();  
    
         int q=0; 
         while (cursor.hasNext()) {     
            DBObject show = cursor.next();
                  
            @SuppressWarnings("rawtypes")
            Map show1 = show.toMap(); 
            String tobplot = (String)show1.get("bplot");  
            book_bplot_temporary[q] = tobplot;                                  
            q++;
          }
         String[] book_bplot = new String[q];   
         for(int j=0;j<q;j++){
             book_bplot[j] = book_bplot_temporary[j];
//             System.out.println( book_bid[j] );          
             	        }
 		return book_bplot;	    
     } 
     
     public static int getlength(){    
    	 return Book_bid.length;
     }
    
     public static int update(String bid,String bnumber,String btype,String bname){
    	 try{   
             // ���ӵ� mongodb ����
             MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
             
             // ���ӵ����ݿ�
             MongoDatabase mongoDatabase = mongoClient.getDatabase("library");  
             System.out.println("Connect to database successfully");
             
             MongoCollection<Document> collection = mongoDatabase.getCollection("books");
             System.out.println("���� books ѡ��ɹ�");
             
             //�����ĵ�    
             collection.updateOne(Filters.eq("bid", bid), new Document("$set",(new Document("bnumber",bnumber))));  
             collection.updateOne(Filters.eq("bid", bid), new Document("$set",(new Document("btype",btype))));
             collection.updateOne(Filters.eq("bid", bid), new Document("$set",(new Document("bname",bname))));
     }catch(Exception e){
         System.err.println( e.getClass().getName() + ": " + e.getMessage() );
      }
		return 0;
     }
     
     
     public static int delete(String bid){
    	 try{   
             // ���ӵ� mongodb ����
             MongoClient mongoClient = new MongoClient( "localhost" , 27017 );

             // ���ӵ����ݿ�
             MongoDatabase mongoDatabase = mongoClient.getDatabase("library");  
             System.out.println("Connect to database successfully");

             MongoCollection<Document> collection = mongoDatabase.getCollection("books");
             System.out.println("���� test ѡ��ɹ�");
             collection.deleteOne(Filters.eq("bid", bid));
    	 }catch(Exception e){
    	        System.err.println( e.getClass().getName() + ": " + e.getMessage() );
         }

		return 0;
    	 
     }
	 
     public static int add(String bid,String bnumber,String btype,String bname,String bplot){
    	 try{   
             // ���ӵ� mongodb ����
             MongoClient mongoClient = new MongoClient( "localhost" , 27017 );

             // ���ӵ����ݿ�
             MongoDatabase mongoDatabase = mongoClient.getDatabase("library");  
             System.out.println("Connect to database successfully");

             MongoCollection<Document> collection = mongoDatabase.getCollection("books");
             System.out.println("���� test ѡ��ɹ�");
             Document document = new Document("bid", bid).  
                     append("bnumber", bnumber).
                     append("btype", btype).
                     append("bname", bname).
                     append("bplot", bplot);  
             List<Document> documents = new ArrayList<Document>();  
             documents.add(document);  
             collection.insertMany(documents);  
             System.out.println("�ĵ�����ɹ�"); 
    	 }catch(Exception e){
 	        System.err.println( e.getClass().getName() + ": " + e.getMessage() );
      }
		return 0;
    	 
     }
	 
     public static String[] search(String bname){
    	 
    	 try{   
             // ���ӵ� mongodb ����
             MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
             
             // ���ӵ����ݿ�
             MongoDatabase mongoDatabase = mongoClient.getDatabase("library");  
             System.out.println("Connect to database successfully");
             
             MongoCollection<Document> collection = mongoDatabase.getCollection("books");
             System.out.println("���� books ѡ��ɹ�");
             
            

             FindIterable<Document> iter = collection.find(new Document("bname",bname));
             iter.forEach(new Block<Document>() {
            	public void apply(Document _doc) {
                String bid=(String) _doc.get("bid");
                System.out.println(bid);
                String bnumber=(String) _doc.get("bnumber");
                String btype=(String) _doc.get("btype");
                String bname=(String) _doc.get("bname");
                String bplot=(String) _doc.get("bplot");
            	System.out.println(_doc.get("bname"));
            	bookinfo=new String[]{bid,bnumber,btype,bname,bplot};
            	}
            	});
            
    	 }catch(Exception e){
  	        System.err.println( e.getClass().getName() + ": " + e.getMessage() );
         }
		System.out.println(bookinfo[0]);
		return bookinfo;
     }
     
     
     public static String[] getUser_uname(){

         String[] user_uname_temporary = new String[100];   
          // ���ӵ� mongodb ����
         MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
         //�˴��������û�����������֤��ʽ��½
         @SuppressWarnings("deprecation")
         DB db = mongoClient.getDB( "library" );  //���ӵ����ݿ�library
         DBCollection coll = db.getCollection("userInfo");  
         System.out.println("Collection userInfo selected successfully");
         DBCursor cursor = coll.find();  
    
         int q=0; 
         while (cursor.hasNext()) {     
            DBObject show = cursor.next();
                  
            @SuppressWarnings("rawtypes")
            Map show1 = show.toMap(); 
            String touname = (String)show1.get("username");                  
            user_uname_temporary[q] = touname;                                     
            q++;
          }
         User_uname = new String[q];   
         for(int j=0;j<q;j++){
             User_uname[j] = user_uname_temporary[j];         
             	        }
 		return User_uname;	    
     }
     
     public static String[] getUser_status(){

         String[] user_status_temporary = new String[100];      
          // ���ӵ� mongodb ����
         MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
         //�˴��������û�����������֤��ʽ��½
         @SuppressWarnings("deprecation")
         DB db = mongoClient.getDB( "library" );  //���ӵ����ݿ�library
         DBCollection coll = db.getCollection("userInfo");  
         System.out.println("Collection userInfo selected successfully");
         DBCursor cursor = coll.find();  
    
         int q=0; 
         while (cursor.hasNext()) {    
            DBObject show = cursor.next();
                  
            @SuppressWarnings("rawtypes")
            Map show1 = show.toMap();  //���������show(Bson����)ת��ΪMap����
            String tostatus = (String)show1.get("status");  
            user_status_temporary[q] = tostatus;                                      
            q++;
          }
         String[] user_status = new String[q];   
         for(int j=0;j<q;j++){
             user_status[j] = user_status_temporary[j];         
             	        }
 		return user_status;	    
     }
     
     public static int getuserlength(){    
    	 return User_uname.length;
     }
     
     public static int pass(String uname){
    	 try{   
             // ���ӵ� mongodb ����
             MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
             
             // ���ӵ����ݿ�
             MongoDatabase mongoDatabase = mongoClient.getDatabase("library");  
             System.out.println("Connect to database successfully");
             
             MongoCollection<Document> collection = mongoDatabase.getCollection("userInfo");
             System.out.println("���� userInfo ѡ��ɹ�");
             
             //�����ĵ�   ���ĵ���likes=100���ĵ��޸�Ϊlikes=200   
             collection.updateOne(Filters.eq("username", uname), new Document("$set",(new Document("status","��ͨ��"))));  
     }catch(Exception e){
         System.err.println( e.getClass().getName() + ": " + e.getMessage() );
      }
		return 0;
     }
     public static int notpass(String uname){
    	 try{   
             // ���ӵ� mongodb ����
             MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
             
             // ���ӵ����ݿ�
             MongoDatabase mongoDatabase = mongoClient.getDatabase("library");  
             System.out.println("Connect to database successfully");
             
             MongoCollection<Document> collection = mongoDatabase.getCollection("userInfo");
             System.out.println("���� userInfo ѡ��ɹ�");
             
             //�����ĵ�     
             collection.updateOne(Filters.eq("username", uname), new Document("$set",(new Document("status","δͨ��"))));  
     }catch(Exception e){
         System.err.println( e.getClass().getName() + ": " + e.getMessage() );
      }
		return 0;
     }
     
     public static int userdelete(String uname){
    	 try{   
             // ���ӵ� mongodb ����
             MongoClient mongoClient = new MongoClient( "localhost" , 27017 );

             // ���ӵ����ݿ�
             MongoDatabase mongoDatabase = mongoClient.getDatabase("library");  
             System.out.println("Connect to database successfully");

             MongoCollection<Document> collection = mongoDatabase.getCollection("userInfo");
             System.out.println("���� test ѡ��ɹ�");
             collection.deleteOne(Filters.eq("username", uname));
    	 }catch(Exception e){
    	        System.err.println( e.getClass().getName() + ": " + e.getMessage() );
         }

		return 0;
    	 
     }
     
     public static String[] getStu_sname(){

         String[] stu_sname_temporary = new String[100];    
          // ���ӵ� mongodb ����
         MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
         //�˴��������û�����������֤��ʽ��½
         @SuppressWarnings("deprecation")
         DB db = mongoClient.getDB( "library" );  //���ӵ����ݿ�library
         DBCollection coll = db.getCollection("stuInfo");  
         System.out.println("Collection userInfo selected successfully");
         DBCursor cursor = coll.find();  
    
         int q=0; 
         while (cursor.hasNext()) {     //��������books�������ĵ���Ϣ
            DBObject show = cursor.next();
                  
            @SuppressWarnings("rawtypes")
            Map show1 = show.toMap();  //���������show(Bson����)ת��ΪMap����
            String tosname = (String)show1.get("username");                     
            stu_sname_temporary[q] = tosname;                                     
            q++;
          }
         Stu_sname = new String[q];   
         for(int j=0;j<q;j++){
            Stu_sname[j] = stu_sname_temporary[j];         
             	        }
 		return Stu_sname;	    
     }
     
     public static String[] getStu_sstatus(){

         String[] stu_sstatus_temporary = new String[100];   
          // ���ӵ� mongodb ����
         MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
         //�˴��������û�����������֤��ʽ��½
         @SuppressWarnings("deprecation")
         DB db = mongoClient.getDB( "library" );  
         DBCollection coll = db.getCollection("stuInfo");  
         System.out.println("Collection userInfo selected successfully");
         DBCursor cursor = coll.find();  
    
         int q=0; 
         while (cursor.hasNext()) {     
            DBObject show = cursor.next();
                  
            @SuppressWarnings("rawtypes")
            Map show1 = show.toMap();  
            String tosstatus = (String)show1.get("sstatus");                     
            stu_sstatus_temporary[q] = tosstatus;                                  
            q++;
          }
         String[] stu_sstatus = new String[q];   
         for(int j=0;j<q;j++){
             stu_sstatus[j] = stu_sstatus_temporary[j];         
             	        }
 		return stu_sstatus;	    
     }
     
     public static int getstulength(){    
    	 return Stu_sname.length;
     }
     
     public static int stupass(String sname){
    	 try{   
             // ���ӵ� mongodb ����
             MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
             
             // ���ӵ����ݿ�
             MongoDatabase mongoDatabase = mongoClient.getDatabase("library");  
             System.out.println("Connect to database successfully");
             
             MongoCollection<Document> collection = mongoDatabase.getCollection("stuInfo");
             System.out.println("���� userInfo ѡ��ɹ�");
             
             //�����ĵ�   ���ĵ���likes=100���ĵ��޸�Ϊlikes=200   
             collection.updateOne(Filters.eq("username", sname), new Document("$set",(new Document("sstatus","������"))));  
     }catch(Exception e){
         System.err.println( e.getClass().getName() + ": " + e.getMessage() );
      }
		return 0;
     }
     public static int stunotpass(String sname){
    	 try{   
             // ���ӵ� mongodb ����
             MongoClient mongoClient = new MongoClient( "localhost" , 27017 );
             
             // ���ӵ����ݿ�
             MongoDatabase mongoDatabase = mongoClient.getDatabase("library");  
             System.out.println("Connect to database successfully");
             
             MongoCollection<Document> collection = mongoDatabase.getCollection("stuInfo");
             System.out.println("���� userInfo ѡ��ɹ�");
             
             //�����ĵ�   ���ĵ���likes=100���ĵ��޸�Ϊlikes=200   
             collection.updateOne(Filters.eq("username", sname), new Document("$set",(new Document("sstatus","����"))));  
     }catch(Exception e){
         System.err.println( e.getClass().getName() + ": " + e.getMessage() );
      }
		return 0;
     }
     
     
     public static int studelete(String sname){
    	 try{   
             // ���ӵ� mongodb ����
             MongoClient mongoClient = new MongoClient( "localhost" , 27017 );

             // ���ӵ����ݿ�
             MongoDatabase mongoDatabase = mongoClient.getDatabase("library");  
             System.out.println("Connect to database successfully");

             MongoCollection<Document> collection = mongoDatabase.getCollection("stuInfo");
             System.out.println("���� test ѡ��ɹ�");
             collection.deleteOne(Filters.eq("username", sname));
    	 }catch(Exception e){
    	        System.err.println( e.getClass().getName() + ": " + e.getMessage() );
         }

		return 0;
    	 
     }
     
	 public static void main( String args[] ){
		search("books1");
		 //System.out.println(book.size());
		 
		// int a=add("5","TP2012","��ʷ","book4");
		// System.out.println(a);
		 /*int d=delete("5");
		 System.out.println(d);*/
		 //int u=update("2","B22356","����","books2");
		// System.out.println(u);
		/* String[] id=getBook_bid();
		 String[] name=getBook_bname();
		 int n=getlength();
		 System.out.println(n);*/
		 //String []num=getBook_bnumber();
		 //String []type=getBook_btype();
		 
		//int n=getlength();
		//System.out.println( n);
		// for(int j=0;j<1;j++){
			 //System.out.println( id[j] );
			 //System.out.println( name[j] );
			 //System.out.println( num[j] );
			 //System.out.println( type[j] );
	// }
	 }
	 
	 
	    
}
