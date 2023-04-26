<!--
/* Name: Aymen Hasnain
Course: CNT 4714 – Spring 2023 – Project Four
Assignment title: A Three-Tier Distributed Web-Based Application
Date: April 23, 2023
*/
-->

<!DOCTYPE html>
<html lang="en">
<head>
    <title>CNT 4714 Remote Database Manager</title>

    <meta charset="utf-8" />

    <style>
        body {
            background-color: black;
            text-align: center;
        }

        h1, h2, h3, p, h5 {
            color: white;
        }

        h3{
            margin-left: -5%;
        }

        .userType {
            color: green;
        }

        .webpage {
            display: inline-block;
            text-align: left;
            margin: 0 auto;
        }

        #setup {
            margin-top: 10px;
            text-align: center;
        }

        #enter, #wipe, #clear {
            background-color: green;
            border: none;
            color: black;
            padding: 10px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            cursor: pointer;
        }

        #enter {
            margin-left: -20%;
        }
        #enter {
            margin-right: 20px;
        }
        #wipe {
            margin-right: 20px;
        }


        #enter:hover, #wipe:hover, #clear:hover {
            background-color: #333;
            color: white;
        }


        #searchSQL{
            width: 80%;
            height: 100px;
            padding: 12px 20px;
            box-sizing: border-box;
            border: 2px solid #ccc;
            border-radius: 4px;
            background-color: white;
            resize: none;
        }

        #temp {
            color: white;
            text-align: center;
            margin: 0 auto;
        }
    </style>

</head>
<body>

<h1>Welcome to the Spring 2023 Project 4 Enterprise Database System</h1>
<h2>A Servlet/JSP-based Multi-tiered Enterprise Application Using A Tomcat Container</h2>
<h5>You are connected to the Project 4 Enterprise System database as a <span class="userType">CLIENT-LEVEL</span> user.</h5>
<p>Please enter any valid SQL query or update command in the box below.</p>

<div class = "webpage">

    <form method="post" action="/Project4/clientUserServlet">

        <!-- Request.getParamter allows user search to remain on textarea and not clear--->

        <textarea id="searchSQL" name="searchSQL"cols="80" rows="10" ><%= request.getParameter("searchSQL") %></textarea>

        <div id="buffer"></div>
        <!-- Need three buttons for root and client pages -->
        <div id="setup">
            <!--submit button is built into html and we act as redirect -->
            <button id="enter"type="submit">Execute Command</button>

            <!-- clear text isn't working consistantly -- [ fix this ]-->
            <button id="wipe" type="reset" onclick="clearTextArea()">Reset Form</button>

            <button onclick="clearFields()" id="clear" type="button">Clear Results</button>

        </div>

    </form>

</div>
<p>All execution results will appear below this line</p>


<h3>Database Results:</h3>
<!-- Display result here -->
<div id = "temp">
    <%=session.getAttribute("jspTable") %>
</div>

</body>

<!-- end html -->
</html>

<%--
<script>
    String temp=(String)session.getAttribute("temp");
    if(temp == null) temp = " ";
</script>
--%>

<script>
    //script to clear table
    function clearFields(){

        document.getElementById('temp').innerHTML = "";

    }
</script>

<script>
    //script to clear text fields from user input
    function clearTextArea() {

        document.getElementById("searchSQL").value = "";

    }
</script>