<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login   |PFE</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <div class="login">
    <form action="/Gestion_Hopital/authentification" method="get">
          <h1>Login In</h1>
          <hr />
          <p>Votre Identifiant</p>
          <label>login</label>
          <input type="text" name="login" placeholder="login" />
          <label>Password</label>
          <input type="password" name="password"  placeholder="Password" />
          
       <label>Profil</label>
           <select         id="profil" name="profil">
             <option class="username" value="-1"> Profil</option>
         <option class="username" value="1"> Administrateur</option>
         <option class="username" value="2"> Medecin</option>
         <option class="username" value="3"> Chef Service</option>
           <option class="username" value="4"> Secretaire</option> 
            </select>
            <table> 
          <tr>
            <td  ><button> S'authentifier </button></td>
            <td width="20%"></td>
            <td  >
<a href="inscri.jsp" type="submit" class="btn btn-outline-success">Inscription </a>
        	 </td>
         
         </tr>
         </table>
         
        <closeform></closeform></form>
      </div>
      <div class="pic">
        <img src="images/meting.png" />
      </div>
    </div>
  </body>
</html>
<style>

body {
  background: rgb(214, 214, 214);
  font-family: Cambria, Cochin, Georgia, Times, "Times New Roman", serif;
}
.container {
  width: 1500px;
  height: 550px;
  margin: 30px auto;
  display: flex;
  background: rgb(214, 214, 214);
  border-radius: 10px;
  box-shadow: 5px 5px 7px gray, -5px -5px 7px gray;
}
.login {
  width: 1600px;
}
form {
  width: 230px;
  margin: 100px auto;
}
form h1 {
  text-align: center;
  text-transform: uppercase;
  font-weight: bolder;
}
p {
  text-align: center;
}
form label {
  display: block;
  font-size: 16px;
  font-weight: 600;
  padding: 8px;
}
input {
  width: 90%;
  padding: 8px;
  margin: 8px;
  outline: none;
  border: none;
  border: 1px solid gray;
  border-radius: 5px;
}
button {
  width: 250px;
  margin: 8px;
  padding: 8px;
  background: purple;
  outline: none;
  border: none;
  border-radius: 20px;
  color: white;
  font-size: 17px;
  cursor: pointer;
  transition: 0.5s;
}

a {
  width: 250px;
  margin: 8px;
  padding: 8px;
  background: purple;
  outline: none;
  border: none;
  border-radius: 20px;
  color: white;
  font-size: 17px;
  cursor: pointer;
  transition: 0.5s;
}



button span {
  display: inline-block;
  position: relative;
  transition: 0.5s;
}
button span:after {
  content: "\00bb";
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}
button:hover span {
  padding-right: 30px;
}
button:hover span:after {
  opacity: 1;
  right: 0;
}
p a {
  text-decoration: none;
  color: black;
}
hr {
  border-top: 2px solid purple;
}
.pic {
  width: 75%;
  background: violet;
}
.pic img {
  width: 400px;
  margin: 70px 0 0 100px;
}
img:hover {
  padding: 3px;
  cursor: pointer;
}

</style>