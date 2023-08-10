"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestMyCounter,
	#superclass : #PackageManifest,
	#category : #'MyCounter-Manifest'
}

{ #category : #'code-critics' }
ManifestMyCounter class >> ruleNoClassCommentRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#MyCounter)) #'2023-08-09T23:02:02.13696+02:00') )
]
