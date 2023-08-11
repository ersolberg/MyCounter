"
`Counter`is a simple concrete class which supports incrementing and decrementing
Its API is 
-`decrement`and`increment`
-`count` 

Its creation message is`startAt:`
"
Class {
	#name : #Counter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #MyCounter
}

{ #category : #accessing }
Counter class >> startingAt: anInteger [
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
			
^ self new count: anInteger.
]

{ #category : #tests }
Counter class >> testCounterStartingAt5 [ 
	"comment stating purpose of class-side method"
	"scope: class-variables  &  class-instance-variables"	
			
self assert: (Counter startingAt: 5) count equals: 5

]

{ #category : #accessing }
Counter >> count [ 
	^ count 
]

{ #category : #accessing }
Counter >> count: anInteger [ 
	count := anInteger. 
	
]

{ #category : #API }
Counter >> decrement [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
count := count -1
]

{ #category : #accessing }
Counter >> increment [
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	

count := count + 1
]

{ #category : #initialization }
Counter >> initialize [ 
	"comment stating purpose of instance-side method"
	"scope: class-variables  &  instance-variables"	
			
count := 0
]

{ #category : #printing }
Counter >> printOn: aStream [

	"comment stating purpose of instance-side method"

	"scope: class-variables  &  instance-variables"

	super printOn: aStream.
	aStream
		nextPutAll: ' with value: ';
		nextPutAll: count printString
]
