package com.doduck.client;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.timepedia.exporter.client.Export;
import org.timepedia.exporter.client.ExportPackage;
import org.timepedia.exporter.client.Exportable;
import org.timepedia.exporter.client.NoExport;

@Export
@ExportPackage("jsc")
public class BusinessLogic implements Exportable{

	public BusinessLogic(){
	}
	
	public int addNumber(int a, int b){
		return a+b;
	}
	
	@NoExport
	public HelloUser buildHelloUser(String name){
		User user = new User();
		user.setName(name);
		user.setAdmin(false);
		return new HelloUser(new Random(), user, listGretter());
	}
	
	@NoExport
	public List<String> listGretter(){
		List<String> someNames = new ArrayList<String>();
		someNames.add("doduck");
		someNames.add("martin");
		someNames.add("magakian");
		return someNames;
	}
	
}