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
         background-color: #3c1443;
         color: #d4d4dc;
         text-align: center;
         font-family: Arial, sans-serif;
      }
      h1, h2, h3, p, table, header {
         margin: 0 auto;
         max-width: 800px;
      }
      table {
         border-collapse: collapse;
      }
      th, td {
         padding: 10px;
         border: 1px solid #d4d4dc;
      }
      th {
         background-color: #d4d4dc;
         color: #3c1443;
      }
      .userType {
         background-color: yellow;
         color: #3c1443;
         padding: 2px;
         font-weight: bold;
      }
      input[type="text"] {
         width: 100%;
         padding: 5px;
         box-sizing: border-box;
         border: none;
         background-color: #6d2e86;
         color: #d4d4dc;
         border-radius: 5px;
         margin-bottom: 10px;
      }
      button {
         background-color: #d4d4dc;
         color: #3c1443;
         border: none;
         padding: 10px 20px;
         text-transform: uppercase;
         font-weight: bold;
         margin: 10px;
         cursor: pointer;
         border-radius: 5px;
         transition: all 0.3s ease-in-out;
      }
      button:hover {
         background-color: #6d2e86;
         color: #d4d4dc;
      }


   </style>
</head>
<body>

<!--Overall table will all be similar -->
<h1>Welcome to the Spring 2023 Project 4 Enterprise Database System</h1>

<h2>Data Entry Application</h2>

<p>You are connected to the Project 4 Enterprise System database as a <span class="userType">DATA-ENTRY-LEVEL</span> user.</p>

<p>Enter the data values in a form below to add a new record to the corresponding database table.</p>


<header>Jobs Record Insert</header>

<form method="post" action="/Project4/jobsDBServlet" >

   <table>
      <!--header for table -->
      <tr>
         <th>jnum</th>

         <th>jname</th>

         <th>numworkers</th>

         <th>city</th>

      </tr>

      <!--textfield inputs -->
      <tr>
         <td>
            <input type="text" size="35" name="jnum">
         </td>
         <td>
            <input type="text" size="35" name="jname">
         </td>
         <td>
            <input type="text" size="35" name="numworkers">
         </td>
         <td>
            <input type="text" size="35" name="city">
         </td>

      </tr>

   </table>

   <button type = "submit">Enter Job Record Into Database</button>

   <button onclick="clearFields()" type="reset">Clear Data and Results</button>

</form>

<header>Parts Record Insert</header>

<form method="post" action="/Project4/partsDBServlet">

   <table>
      <!--header for table -->
      <tr>
         <th>pnum</th>

         <th>pname</th>

         <th>color</th>

         <th>weight</th>

         <th>city</th>
      </tr>

      <!--textfield inputs -->
      <tr>
         <td>
            <input type="text" size="35" name="pnum">
         </td>
         <td>
            <input type="text" size="35" name="pname">
         </td>
         <td>
            <input type="text" size="35" name="color">
         </td>
         <td>
            <input type="text" size="35" name="weight">
         </td>
         <td>
            <input type="text" size="35" name="city">
         </td>
      </tr>

   </table>

   <button type = "submit">Enter Part Record Into Database</button>
   <button onclick="clearFields()" type = "reset">Clear Data and Results</button>

</form>

<header>Suppliers Record Insert</header>

<form method="post" action="/Project4/suppliersDBServlet">

   <table>
      <!--header for table -->
      <tr>
         <th>snum</th>

         <th>sname</th>

         <th>status</th>

         <th>city</th>

      </tr>

      <!--textfield inputs -->
      <tr>
         <td>
            <input type="text" size="35" name="snum">
         </td>
         <td>
            <input type="text" size="35" name="sname">
         </td>
         <td>
            <input type="text" size="35" name="status">
         </td>
         <td>
            <input type="text" size="35" name="city">
         </td>
      </tr>

   </table>

   <button type = "submit">Enter Supplier Record Into Database</button>
   <button onclick="clearFields()" type="reset">Clear Data and Results</button>

</form>

<header>Shipments Record Insert</header>
<form method="post" action="/Project4/shipmentsDBServlet" >
   <table>
      <!--header for table -->
      <tr>
         <th>snum</th>

         <th>pnum</th>

         <th>jnum</th>

         <th>quantity</th>
      </tr>

      <!--textfield inputs -->
      <tr>
         <td>
            <input type="text" size="35" name="snum">
         </td>
         <td>
            <input type="text" size="35" name="pnum">
         </td>
         <td>
            <input type="text" size="35" name="jnum">
         </td>
         <td>
            <input type="text" size="35" name="quantity">
         </td>
      </tr>

   </table>

   <button type="submit">Enter Shipment Record Into Database</button>

   <button onclick="clearFields()" type ="reset">Clear Data and Results</button>

</form>
<h4>Database Results:</h4>
<!-- Display result here -->
<div id = "temp">
   <%= session.getAttribute("jspTable") %>
</div>

</body>

</html>

<script>
   //script to clear text fields from user input
   function clearFields(){
      document.getElementById('temp').innerHTML = "";
   }
</script>