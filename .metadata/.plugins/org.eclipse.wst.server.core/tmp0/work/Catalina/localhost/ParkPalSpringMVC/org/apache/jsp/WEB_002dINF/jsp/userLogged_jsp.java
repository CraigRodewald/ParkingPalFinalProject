/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.33
 * Generated at: 2016-05-18 03:02:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.finalproject.parkpal.dto.Member;

public final class userLogged_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.finalproject.parkpal.dto.Member");
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=windows-1256");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \r\n");
      out.write("   \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\t<!-- Latest compiled and minified CSS -->\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" integrity=\"sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7\" crossorigin=\"anonymous\">\r\n");
      out.write("<link rel=\"stylesheet\" href=\"resources/css/style.css\">\r\n");
      out.write("<!-- Latest compiled and minified JavaScript -->\r\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\" integrity=\"sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    \r\n");
      out.write("<script src=\"http://maps.googleapis.com/maps/api/js?key=AIzaSyCuK0lnSgOTVwMuBHXI22JfpSVfopATzqs\"></script>\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<meta http-equiv=\"Content-Type\" content=\"text/html; charset=windows-1256\">\r\n");
      out.write("\t\r\n");
      out.write("\t<title>ParkPal</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<script>\r\n");
      out.write("\tvar stringLat;\r\n");
      out.write("\tvar stringLong;\r\n");
      out.write("\tvar firstPart= '<iframe width=\"100%\" height=\"700px\" src=\"//www.parkme.com/widget/?&header=false&lat=';\r\n");
      out.write("\tvar middlePart= '&lng=';\r\n");
      out.write("\tvar lastPart='&zoom=16&duration=120\" frameborder=\"0\" style=\"border: 1px solid silver;\" allowfullscreen></iframe><div style=\"width: 850px; font-size: 8pt; text-align:right; color:grey;\"> Powered by <a style=\"color:grey !important; text-decoration:none;\" href=\"http://www.parkme.com/\">ParkMe</a></div>';\r\n");
      out.write("\t\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("\r\n");
      out.write("var QueryString = function () {\r\n");
      out.write("  // This function is anonymous, is executed immediately and \r\n");
      out.write("  // the return value is assigned to QueryString!\r\n");
      out.write("  var query_string = {};\r\n");
      out.write("  var query = window.location.search.substring(1);\r\n");
      out.write("  var vars = query.split(\"&\");\r\n");
      out.write("  for (var i=0;i<vars.length;i++) {\r\n");
      out.write("    var pair = vars[i].split(\"=\");\r\n");
      out.write("        // If first entry with this name\r\n");
      out.write("    if (typeof query_string[pair[0]] === \"undefined\") {\r\n");
      out.write("      query_string[pair[0]] = decodeURIComponent(pair[1]);\r\n");
      out.write("        // If second entry with this name\r\n");
      out.write("    } else if (typeof query_string[pair[0]] === \"string\") {\r\n");
      out.write("      var arr = [ query_string[pair[0]],decodeURIComponent(pair[1]) ];\r\n");
      out.write("      query_string[pair[0]] = arr;\r\n");
      out.write("        // If third or later entry with this name\r\n");
      out.write("    } else {\r\n");
      out.write("      query_string[pair[0]].push(decodeURIComponent(pair[1]));\r\n");
      out.write("    }\r\n");
      out.write("      var locationList = [];\r\n");
      out.write("  \t\tlocationList.push(pair[1]);\r\n");
      out.write("  } \r\n");
      out.write("  console.log(query_string)\r\n");
      out.write("  if(query_string != null){\r\n");
      out.write("\tstringLat = query_string[\"stringLat\"];\r\n");
      out.write("\tstringLong= query_string[\"stringLong\"];\r\n");
      out.write("  }\r\n");
      out.write("  else{\r\n");
      out.write("\t  stringLat = 42.335960;\r\n");
      out.write("\t\tstringLong= -83.049712;\r\n");
      out.write("  }\r\n");
      out.write("  window.addEventListener(\"load\", myFunction);\r\n");
      out.write("  function myFunction() {\r\n");
      out.write("\t\tvar lat = stringLat;\r\n");
      out.write("\t\tvar lng = stringLong;\r\n");
      out.write("\t\t//console.log(stringLat, stringLong);\r\n");
      out.write("\t\tdocument.getElementById(\"redrawMap\").innerHTML = firstPart.concat(lat,middlePart,lng,lastPart);\r\n");
      out.write("\t}\r\n");
      out.write("  return query_string;\r\n");
      out.write("}();\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<nav class=\"navbar navbar-inverse\">\r\n");
      out.write("  <div class=\"container-fluid\">\r\n");
      out.write("    <div class=\"navbar-header\">\r\n");
      out.write("      <a class=\"navbar-brand\" href=\"index.jsp\">ParkPal</a>\r\n");
      out.write("    </div>\r\n");
      out.write("    <ul class=\"nav navbar-nav\">\r\n");
      out.write("      <li class=\"active\"><a href=\"\">Map</a></li>\r\n");
      out.write("      <li class=\"active\"><a href=\"\">About Us</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("    <ul class=\"nav navbar-nav navbar-right\">\r\n");
      out.write("      <li><a href=\"register\"><span class=\"glyphicon glyphicon-user\"></span> Sign Up</a></li>\r\n");
      out.write("      <li><a href=\"loginPage\"><span class=\"glyphicon glyphicon-log-in\"></span> Login</a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("  </div>\r\n");
      out.write("</nav>\r\n");
      out.write("\t<center><h1 id = \"\">\r\n");
      out.write("\t\t");

		Member currentUser = (Member)session.getAttribute("currentSessionUser");
		if(currentUser == null){
			
			out.print("Welcome <strong>guest</strong>");
			
		}else {

		out.print("Welcome <strong>" + currentUser.getFirstName() + ' ' + currentUser.getLastName() + "</strong>");
	
	}
      out.write("\r\n");
      out.write("\t</h1></center>\r\n");
      out.write("\t<br>\r\n");
      out.write("\t  <div id=\"floating-panel\">\r\n");
      out.write("\r\n");
      out.write("      <input id=\"address\" class=\"subscribe-form form-control\" value=\"\" placeholder=\"Enter a City\"> <input\r\n");
      out.write("          id=\"submit\" onclick=\"initMap()\" type=\"button\"\r\n");
      out.write("          value=\"Submit\" class=\"btn btn-primary\">\r\n");
      out.write("  </div>\r\n");
      out.write("  \r\n");
      out.write("  <div id=\"map\"></div>\r\n");
      out.write("\t<br>\r\n");
      out.write("\t\r\n");
      out.write("\t<div>\r\n");
      out.write("\t\t<p id=\"redrawMap\">\r\n");
      out.write("\t\t\t<!-- <iframe width=\"100%\" height=\"700px\" src=\"//www.parkme.com/widget/?&header=false&lat=42.335960&lng=-83.049712&zoom=16&duration=120\" frameborder=\"0\" style=\"border: 1px solid silver;\" allowfullscreen></iframe>\r\n");
      out.write("\t\t\t<div style=\"width: 850px; font-size: 8pt; text-align:right; color:grey;\"> Powered by <a style=\"color:grey !important; text-decoration:none;\" href=\"http://www.parkme.com/\">ParkMe</a> -->\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\twindow.addEventListener(\"resize\", myFunction);\r\n");
      out.write("\t\tvar x = 0;\r\n");
      out.write("\t\tvar lat = stringLat;\r\n");
      out.write("\t\tvar lng = stringLong;\r\n");
      out.write("\t\t//console.log(stringLat, stringLong);\r\n");
      out.write("\t\tvar firstPart= '<iframe width=\"100%\" height=\"700px\" src=\"//www.parkme.com/widget/?&header=false&lat=';\r\n");
      out.write("\t\tvar middlePart= '&lng=';\r\n");
      out.write("\t\tvar lastPart='&zoom=16&duration=120\" frameborder=\"0\" style=\"border: 1px solid silver;\" allowfullscreen></iframe><div style=\"width: 850px; font-size: 8pt; text-align:right; color:grey;\"> Powered by <a style=\"color:grey !important; text-decoration:none;\" href=\"http://www.parkme.com/\">ParkMe</a></div>';\r\n");
      out.write("\t\t\r\n");
      out.write("\t\tfunction myFunction() {\r\n");
      out.write("\t\t\tvar lat = stringLat;\r\n");
      out.write("\t\t\tvar lng = stringLong;\r\n");
      out.write("\t\t\t//console.log(stringLat, stringLong);\r\n");
      out.write("    \t\tdocument.getElementById(\"redrawMap\").innerHTML = firstPart.concat(lat,middlePart,lng,lastPart);\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("\t\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\tfunction initMap() {\r\n");
      out.write("\t    \tvar map = new google.maps.Map(document.getElementById('map'), {\r\n");
      out.write("\t      \tzoom: 4,\r\n");
      out.write("\t      \tcenter: {lat: 39.83, lng: -98.58}\r\n");
      out.write("\t    \t});\r\n");
      out.write("\t    \r\n");
      out.write("\t    \tvar geocoder = new google.maps.Geocoder();\r\n");
      out.write("\t    \r\n");
      out.write("\t   \t\tdocument.getElementById('submit').addEventListener('click', function() {\r\n");
      out.write("\t      \tgeocodeAddress(geocoder, map);\r\n");
      out.write("\t    \t});\r\n");
      out.write("\t   \t\r\n");
      out.write("\t  \t}\r\n");
      out.write("  \r\n");
      out.write("    \tfunction geocodeAddress(geocoder, resultsMap) {\r\n");
      out.write("     \t\tvar address = document.getElementById('address').value;\r\n");
      out.write("     \t\r\n");
      out.write("    \t \tgeocoder.geocode({'address': address}, function(results, status) {\r\n");
      out.write("\r\n");
      out.write("        \tif (status === google.maps.GeocoderStatus.OK) {\r\n");
      out.write("          \t\tresultsMap.setCenter(results[0].geometry.location);\r\n");
      out.write("          \t\tvar marker = new google.maps.Marker({\r\n");
      out.write("\r\n");
      out.write("            \tmap: resultsMap,\r\n");
      out.write("            \tposition: results[0].geometry.location\r\n");
      out.write("          \t});\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("          var lat = results[0].geometry.location.lat();\r\n");
      out.write("          var lon = results[0].geometry.location.lng();\r\n");
      out.write("          console.log(\"Longitude\",lon,\"latitude\", lat);\r\n");
      out.write("          stringLong = lon.toString();\r\n");
      out.write("          stringLat = lat.toString();\r\n");
      out.write("          myFunction();\r\n");
      out.write("        \t}\r\n");
      out.write("         else {\r\n");
      out.write("          \talert('Geocode was not successful for the following reason: Enter a city or address');\r\n");
      out.write("        \t}\r\n");
      out.write("        \t\r\n");
      out.write("      \t\t});\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("\t\r\n");
      out.write(" </body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
