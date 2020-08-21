--create database  practise
--
/*
create xml schema collection employeeschemacollection as 
'<?xml version = "1.0"?>
<xsd: schema
     targetNameSpace=
	 "http://schmas.adventure-works.com/employees"
	 xmlns="http://schema.adventure-works.com/employees"
	  elementFormDefault="qualified"
	  attributeFormDefault="unqualified"
	  xmlns:xsd="http://www.w3.org/2001/xmlsSchema">
<xsd:element name="EmployeeDetails">
<xsd:complextype>
<xsd:sequence>
          <xsd:element name="previouseEmployementorg" minOccurs="1"
		  maxOccurs="5">
		  <xsd:complexType>
		  <xsd:simpleContent>
		  <xsd:extension base="xsd:string">
		  <xsd:attribute  name="previousEmploymentDesig"
		  type="xsd:string" />
		  <xsd:attribute name="previousEmploymentDuration"
		  type="string">
		  </xsd:extension>
		  </xsd:simpleContent>
		  </xsd:complexType>
		  </xsd:element>
	</xsd:sequence>
	</xsd:element>
	</xsd:schema>'
	*/







