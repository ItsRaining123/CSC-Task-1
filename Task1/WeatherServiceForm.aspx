<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WeatherServiceForm.aspx.cs" Inherits="Task1.WeatherServiceForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
<h3>Location: </h3>
<h4 id="query"></h4>
<h3>Temperature: </h3>
<h4 id="tempC"></h4>
<button>Get Weather</button>

        </div>
    </form>
</body>

  
</html>
  <script>

      (function () {
          $(document).ready(function () {
              $("button").click(function () {
                  $.ajax({
                      url: "http://api.worldweatheronline.com/premium/v1/weather.ashx?key=8ca0d552309a4e5db00174835201806&q=Singapore",
                      type: "GET",
                      success: function (data) {
                          var xml = data,
                              $xml = $(xml),
                              $query = $xml.find("query"),
                              $tempC = $xml.find("temp_C");

                          $("#query").append($query.text());
                          $("#tempC").append($tempC.text());

                          console.log(data);
                      }
                  });
              });
          });


      })


  </script>
