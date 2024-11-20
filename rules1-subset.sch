<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <sch:ns uri="http://marklogic.com/xdmp/json/basic" prefix="mlj"/>

    <sch:pattern id="user-top_level">
        <sch:rule context="/mlj:json">
            <sch:assert test="@type = 'object'" diagnostics="type_att"> The value of attribute
                "type" at the root json element must be "object". </sch:assert>
            <sch:assert test="mlj:externalSystemId">The element <sch:value-of select="name(.)"
                />/externalSystemId is expected.</sch:assert>
            <sch:assert test="mlj:barcode">The element <sch:value-of select="name(.)"/>/barcode is
                expected.</sch:assert>
            <sch:assert test="mlj:active">The boolean <sch:value-of select="name(.)"/>/active is
                expected.</sch:assert>
            <sch:assert test="mlj:patronGroup">The element <sch:value-of select="name(.)"
                />/patronGroup is expected. Also remember that FOLIO expects the value of
                patronGroup to be a UUID; this schema only requires a string value that appears on
                the enumerated list.</sch:assert>
            <sch:assert test="mlj:personal">The element <sch:value-of select="name(.)"/>/patronGroup
                is expected.</sch:assert>
            <sch:assert test="mlj:enrollmentDate">The element <sch:value-of select="name(.)"
                />/enrollmentDate is expected.</sch:assert>
            <sch:assert test="mlj:expirationDate">The element <sch:value-of select="name(.)"
                />/expirationDate is expected.</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="user-level_2">
        <sch:rule context="mlj:externalSystemId">
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <sch:rule context="mlj:barcode">
            <sch:assert test="text()" diagnostics="current_element_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <sch:rule context="mlj:active">
            <sch:assert test=". = 'true' or . = 'false'" diagnostics="element_enum"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <sch:rule context="mlj:personal">
            <sch:assert test="@type = 'object'" diagnostics="type_att"/>
            <sch:assert test="mlj:lastName">The element <sch:value-of select="name(.)"/>/lastName is
                REQUIRED in FOLIO.</sch:assert>
            <sch:assert test="mlj:firstName">The element <sch:value-of select="name(.)"/>/firstName
                is expected.</sch:assert>
            <sch:assert test="mlj:email">The element <sch:value-of select="name(.)"/>/email is
                expected.</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="user-personal_object">
        <sch:rule context="mlj:lastName">
            <sch:assert test="text()" diagnostics="current_element_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <sch:rule context="mlj:firstName">
            <sch:assert test="text()" diagnostics="current_element_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <sch:rule context="mlj:middleName">
            <sch:assert test="text()" diagnostics="current_element_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <sch:rule context="mlj:preferredFirstName">
            <sch:assert test="text()" diagnostics="current_element_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <sch:rule context="mlj:mobilePhone">
            <sch:assert test="matches(., '^([0-9]{3}-[0-9]{3}-[0-9]{4})')">The value of
                personal/mobilePhone does not follow the expected pattern.</sch:assert>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <sch:rule context="mlj:phone">
            <sch:assert test="text()" diagnostics="current_element_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <sch:rule context="mlj:addresses">
            <sch:assert test="@type = 'array'" diagnostics="type_att"/>
            <sch:assert test="mlj:json">The element <sch:value-of select="name(.)"/>/json is
                expected. </sch:assert>
        </sch:rule>
        <sch:rule context="mlj:email">
            <sch:assert test="matches(., '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}')">The
                email address at personal/email does not follow the expected pattern.</sch:assert>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="user-addresses_array">
        <sch:rule context="//mlj:addresses/mlj:json">
            <sch:assert test="@type = 'object'">The value of the type attribute at element
                personal/addresses/json is incorrect.</sch:assert>
            <sch:assert test="mlj:addressId">The element personal/addresses/json/addressId is
                expected.</sch:assert>
            <sch:assert test="mlj:addressTypeId">The element personal/addresses/json/addressTypeId
                is expected.</sch:assert>
            <sch:assert test="mlj:addressLine1">The element personal/addresses/json/addressLine1 is
                expected.</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="user-addresses-json_object">
        <sch:rule context="mlj:addressId">
            <sch:assert test="text()" diagnostics="current_element_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <sch:rule context="mlj:addressTypeId">
            <sch:assert test="text()" diagnostics="current_element_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <sch:rule context="mlj:addressLine1">
            <sch:assert test="text()" diagnostics="current_element_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <!-- Do we ever see address line 2? -->
        <sch:rule context="mlj:city">
            <sch:assert test="text()" diagnostics="current_element_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <sch:rule context="mlj:postalCode">
            <sch:assert test="text()" diagnostics="current_element_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
        <sch:rule context="mlj:countryId">
            <!-- Probably need a lookup for this -->
            <sch:assert test="text()" diagnostics="current_element_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att"/>
        </sch:rule>
    </sch:pattern>

    <sch:diagnostics>
        <sch:diagnostic id="current_element_expected">The element <sch:value-of select="name(.)"/>
            is expected here with a child text node.</sch:diagnostic>
        <sch:diagnostic id="type_att">The value of the type attribute at element <sch:value-of
                select="name(.)"/> is incorrect.</sch:diagnostic>
        <sch:diagnostic id="element_enum">The value of the element <sch:value-of select="name(.)"/>
            is incorrect.</sch:diagnostic>
    </sch:diagnostics>
</sch:schema>
