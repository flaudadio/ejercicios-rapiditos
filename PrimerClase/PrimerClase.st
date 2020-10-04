!classDefinition: #GuardiaDeSkyrim category: 'PrimerClase'!
DenotativeObject subclass: #GuardiaDeSkyrim
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GuardiaDeSkyrim class' category: 'PrimerClase'!
GuardiaDeSkyrim class
	instanceVariableNames: 'cantidadDeVecesQueHablaronConmigo respuestasParaContestar'!

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'FL 10/2/2020 16:02:36'!
contestar

	^respuestasParaContestar at: (cantidadDeVecesQueHablaronConmigo min: respuestasParaContestar size).! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'FL 10/2/2020 16:02:41'!
conversar

	self recordarQueConversaronConmigo.
	^self contestar.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'FL 10/4/2020 15:12:35'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeVecesQueHablaronConmigo := 0.
	respuestasParaContestar := #('Bienvenido forastero' 'En que lo puedo ayudar' 'Buenos dias' 'Lo estaba esperando' '¿me estás hablando a mí?' 'Alegrame el día' 'Buenas' ).! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'SF 10/1/2020 21:51:16'!
recordarQueConversaronConmigo

	cantidadDeVecesQueHablaronConmigo := cantidadDeVecesQueHablaronConmigo + 1.
! !

GuardiaDeSkyrim initializeAfterFileIn!