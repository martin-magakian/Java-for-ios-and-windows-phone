package com.doduck.client;

import org.timepedia.exporter.client.ExporterUtil;

import com.google.gwt.core.client.EntryPoint;


public class Java2javascript implements EntryPoint {

	
	public void onModuleLoad() {
		ExporterUtil.exportAll();
		onLoad();
	}
	
	  private native void onLoad() /*-{
	    if ($wnd.myInit) $wnd.myInit();
	  }-*/;
}
