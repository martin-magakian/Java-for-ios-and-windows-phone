package com.doduck.client;

import java.util.List;
import java.util.Random;

import org.timepedia.exporter.client.Export;
import org.timepedia.exporter.client.ExportPackage;
import org.timepedia.exporter.client.Exportable;


@Export
@ExportPackage("jsc")
public class HelloUser implements Exportable{

	private Random random;
	private User user;
	private List<String>  fromList;
	
	public HelloUser(Random random, User user, List<String> fromList) {
		this.user = user;
		this.random = random;
		this.fromList = fromList;
	}
	
	public String sayHi(){
		String from = fromList.get(random.nextInt(3));
		return "Hello "+ user.getName() + " from "+from;
	}
	
}
