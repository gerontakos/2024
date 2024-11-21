<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <sch:ns uri="http://marklogic.com/xdmp/json/basic" prefix="mlj"/>
    <sch:pattern id="user-top_level">
        <sch:rule context="/mlj:json">
            <sch:assert test="@type = 'object'"> The value of attribute
                "type" at the root json element must be "object". </sch:assert>
            <sch:assert test="mlj:externalSystemId">The element <sch:value-of select="name(.)"
                />/externalSystemId is expected.</sch:assert>
        </sch:rule>
    </sch:pattern>
</sch:schema>
