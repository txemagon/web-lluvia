/**
 * Servicios para objetos y XML
 * 
 * @author Txema
 * @version 1.00, Junio de 2007
 */

/**
 * Convertir los par�metros al metodo GET
 * 
 * @param {Object} url Direcci�n del servlet.
 * @param {Object} data Par�metros de la petici�n.
 */


/**
 * Para quitar los elementos vac�os del Mozilla.
 * 
 * @param {Object} xml Objeto del que se van a eliminar los Textnode vac�os.
 */
function quitarBlancos(xml){
	var loopIndex;

	for (loopIndex = 0; loopIndex < xml.childNodes.length;loopIndex++) {
		var currentNode = xml.childNodes[loopIndex];
		
		if (currentNode.nodeType == 1) 
			quitarBlancos(currentNode);
		
		if (((/^\s+$/.test(currentNode.nodeValue))) && (currentNode.nodeType == 3)) 
			xml.removeChild(xml.childNodes[loopIndex--]);		
	}
}