var numero1="12", numero2="78";
var resultado = parseInt(numero1) + parseInt(numero2);
document.writeln("<h6> El resultado es : " + resultado+ "<b />");

var arreglo1=["nombre",54,"apellido",true];
document.writeln("arreglo indice 0 " + arreglo1[0] + "<b />");
document.writeln("arreglo indice 1 " + arreglo1[1] + "<b />");
document.writeln("arreglo indice 2 " + arreglo1[2] + "<b />");
document.writeln("arreglo indice 3 " + arreglo1[3] + "<b />");
arreglo1[arreglo1.length] = "Item anadido";
document.writeln("<h3 style='text-align:center'>Arreglo indice 5 "+ arreglo1[4] + " <b /> </h3>");
//AREGLOS ORDENADOS
arreglo1.push("Fisica","Quimica");
document.writeln("<p class='fs-1'>Arreglo </p>");
document.writeln("<h3 style='text-align:center'>Arreglo ITEMS : "+ arreglo1.join(" - ") + " <b /> </h3>");
document.writeln("<h3 style='text-align:center'>Arreglo Ordenado : "+ arreglo1.sort() + " <b /> </h3>");
var mes = prompt("Ingresar el mes: ");
switch(mes){
    case "enero":
        console.log("El mes es enero");
        alert("El mes es ENERO");
        break;
    case "febrero":
        console.log("El mes es febrero");
        break;
    default:
        console.log("El mes es invalido");
        break;
    }    
let fLen = arreglo1.length;

let text = "<ul>";
for (let i = 0; i < fLen; i++) {
  text += "<li>" + arreglo1[i] + "</li>";
}
text += "</ul>";
document.getElementById("demo").innerHTML = text;
document.writeln("<p class='fs-5' > Arreglo con for : </p>");
for (let i = 0; i < fLen; i++) {
    document.writeln("<b />" + arreglo1[i]);
    //text += "<li>" + arreglo1[i] + "</li>";
  }

