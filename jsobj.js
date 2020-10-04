<!DOCTYPE html>
<html>
<body>

<h2>JavaScript Display Object Properties</h2>

<p id="demo"></p>

<script>
var x, text = "";
var person = {name:"John", age:50, city:"New York"};

for (x in person) {
  text += person[x] + " ";
};

document.getElementById("demo").innerHTML = text;
</script>

</body>
</html>
