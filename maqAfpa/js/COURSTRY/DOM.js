DOM (Document Object Model) représente tout le contenu de la page sous forme d’objets pouvant être modifiés.

L’objet "document" est le “point d’entrée” principal de la page. Nous pouvons changer ou créer n’importe quoi sur la page en l’utilisant.

// change la couleur de fond en rouge
document.body.style.background = "red";

// réinitialisation après 1 seconde
setTimeout(() => document.body.style.background = "", 1000);


BOM (Browser Object Model)  contient des objets supplémentaire fourni par le navigateur (l’environnement hôte) pour travailler avec tout à l’exception du document.

alert(location.href); // affiche l'URL actuelle
if (confirm("Go to Wikipedia?")) {
  location.href = "https://wikipedia.org"; // rediriger le navigateur vers une autre URL
}
<-- -->

<html>
<body>
  <div>Users:</div>
  <ul>
    <li>John</li>
    <li>Pete</li>
  </ul>
</body>
</html>

Le noeud <div> du DOM : 

document.body.firstElementChild
// ou
document.body.children[0]
// ou (le premier nœud est l'espace, nous prenons donc le deuxième)
document.body.childNodes[1]


Le nœud <ul> du DOM :

document.body.lastElementChild
// ou
document.body.children[1]

Le deuxième <li> (avec Pete) :

// obtenir <ul>, puis obtenir son dernier élément enfant
document.body.lastElementChild.lastElementChild



Est-il vrai que elem.lastChild.nextSibling est toujours null ?

Oui c’est vrai. L’élément elem.lastChild est toujours le dernier, il n’a pas de nextSibling.


Est-il vrai que elem.children[0].previousSibling est toujours null ?

Non, c’est faux, car elem.children[0] est le premier enfant parmi les éléments. Mais il peut exister des nœuds non-éléments avant lui. Ainsi, previousSibling peut être un nœud texte.


<-- -->

There are 6 main methods to search for nodes in DOM:

querySelector                   CSS-selector
querySelectorAll                CSS-selector
getElementById                  "id"
getElementsByName               "name"
getElementsByTagName            "tag or '*'"
getElementsByClassName          "class"

<-- -->

How to find?…

The table with id="age-table".
All label elements inside that table (there should be 3 of them).
The first td in that table (with the word “Age”).
The form with name="search".
The first input in that form.
The last input in that form.

// 1. The table with `id="age-table"`.
let table = document.getElementById('age-table')

// 2. All label elements inside that table
table.getElementsByTagName('label')
// or
document.querySelectorAll('#age-table label')

// 3. The first td in that table (with the word "Age")
table.rows[0].cells[0]
// or
table.getElementsByTagName('td')[0]
// or
table.querySelector('td')

// 4. The form with the name "search"
// assuming there's only one element with name="search" in the document
let form = document.getElementsByName('search')[0]
// or, form specifically
document.querySelector('form[name="search"]')

// 5. The first input in that form.
form.getElementsByTagName('input')[0]
// or
form.querySelector('input')

// 6. The last input in that form
let inputs = form.querySelectorAll('input') // find all inputs
inputs[inputs.length-1] // take the last one

<-- -->

Chaque nœud DOM appartient à une certaine classe. Les classes forment une hiérarchie. L’ensemble complet des propriétés et des méthodes résulte de l’héritage.

Les propriétés principales du nœud DOM sont :

nodeType
Nous pouvons l’utiliser pour voir si un nœud est un texte ou un nœud d’élément. Il a une valeur numérique: 1 pour les éléments, 3 pour les nœuds de texte et quelques autres pour les autres types de nœuds. Lecture seulement.
nodeName/tagName
Pour les éléments, nom de balise (en majuscules sauf en mode XML). Pour les nœuds non-élément, nodeName décrit ce que c’est. Lecture seulement.
innerHTML
Le contenu HTML de l’élément. Peut être modifié.
outerHTML
Le code HTML complet de l’élément. Une opération d’écriture dans elem.outerHTML ne touche pas elem lui-même. Au lieu de cela, il est remplacé par le nouveau HTML dans le contexte externe.
nodeValue/data
Le contenu d’un nœud non élément (texte, commentaire). Ces deux sont presque les mêmes, nous utilisons généralement data. Peut être modifié.
textContent
Le texte à l’intérieur de l’élément : le HTML moins tous les <tags>. L’écriture met le texte à l’intérieur de l’élément, avec tous les caractères spéciaux et balises traités exactement comme du texte. Peut insérer en toute sécurité du texte généré par l’utilisateur et protéger contre les insertions HTML indésirables.
hidden
Lorsqu’il est défini sur true, fait la même chose que CSS display:none.