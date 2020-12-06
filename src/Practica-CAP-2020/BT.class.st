"
Classe que implementa els mecanismes per fer BackTracking tradicional, dins la pràctica de GRAU-CAP 2020-21.

Cal completar el mètode  'try:'

Teniu diversos exemples del seu ús  a l'enunciat
"
Class {
	#name : #BT,
	#superclass : #Object,
	#instVars : [
		'continuationQueue'
	],
	#category : #'Practica-CAP-2020'
}

{ #category : #'instance creation' }
BT class >> with: finalBlock [
	^ (self new) with: finalBlock
]

{ #category : #core }
BT >> assert: aBoolean [

	aBoolean ifFalse: [self next]
]

{ #category : #core }
BT >> initialize [

	continuationQueue := OrderedCollection with: [ nil ].
]

{ #category : #core }
BT >> next [

	^ self try: #()
]

{ #category : #core }
BT >> try: aCollection [


]

{ #category : #core }
BT >> with: finalBlock [

	continuationQueue := OrderedCollection with: finalBlock.
]
