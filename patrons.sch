<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <sch:ns uri="http://marklogic.com/xdmp/json/basic" prefix="mlj"/>
    <!-- ****************************
         Here begins the value lookups
           1. patron_groups_list
           2. TBD
         ****************************
    -->
    <sch:let name="patron_groups_list">
        <groups>
            <group>
                <id>0001</id>
                <name>LC Staff-External</name>
            </group>
            <group>
                <id>0002</id>
                <name>LC Staff-Internal</name>
            </group>
            <group>
                <id>0003</id>
                <name>LC Staff-Retired</name>
            </group>
            <group>
                <id>0004</id>
                <name>Congress-Staff</name>
            </group>
            <group>
                <id>0005</id>
                <name>Congress-Member</name>
            </group>
            <group>
                <id>0006</id>
                <name>Special Borrower</name>
            </group>
            <group>
                <id>0007</id>
                <name>Hndbk Latin Amer Studies</name>
            </group>
            <group>
                <id>0008</id>
                <name>ILL-US</name>
            </group>
            <group>
                <id>0009</id>
                <name>Congress-Official</name>
            </group>
            <group>
                <id>0010</id>
                <name>Congress-Committee Chair</name>
            </group>
            <group>
                <id>0011</id>
                <name>Supreme Court</name>
            </group>
            <group>
                <id>0012</id>
                <name>Congress-Former Member</name>
            </group>
            <group>
                <id>0013</id>
                <name>Embassy Representative</name>
            </group>
            <group>
                <id>0014</id>
                <name>LC Work Unit</name>
            </group>
            <group>
                <id>0015</id>
                <name>LC Research Facility User</name>
            </group>
            <group>
                <id>0016</id>
                <name>ILL-Foreign</name>
            </group>
            <group>
                <id>0017</id>
                <name>Reader RegistrationOBSOLE</name>
            </group>
            <group>
                <id>0018</id>
                <name>P&amp;P-1 day loan</name>
            </group>
            <group>
                <id>0019</id>
                <name>P&amp;P-1 month loan</name>
            </group>
            <group>
                <id>0020</id>
                <name>P&amp;P-1 week loan</name>
            </group>
            <group>
                <id>0021</id>
                <name>P&amp;P-1 year loan</name>
            </group>
            <group>
                <id>0022</id>
                <name>P&amp;P-2 day loan</name>
            </group>
            <group>
                <id>0023</id>
                <name>WkSp-2 month loan</name>
            </group>
            <group>
                <id>0024</id>
                <name>P&amp;P-2 week loan</name>
            </group>
            <group>
                <id>0025</id>
                <name>P&amp;P-3 day loan</name>
            </group>
            <group>
                <id>0026</id>
                <name>P&amp;P-3 month loan</name>
            </group>
            <group>
                <id>0027</id>
                <name>P&amp;P-6 month loan</name>
            </group>
            <group>
                <id>0028</id>
                <name>P&amp;P-6 week loan</name>
            </group>
            <group>
                <id>0029</id>
                <name>Route List for Serials</name>
            </group>
            <group>
                <id>0030</id>
                <name>P&amp;P-18 month loan</name>
            </group>
            <group>
                <id>0031</id>
                <name>P&amp;P-2 year loan</name>
            </group>
            <group>
                <id>0032</id>
                <name>P&amp;P-3 year loan</name>
            </group>
            <group>
                <id>0033</id>
                <name>P&amp;P-3 week loan</name>
            </group>
            <group>
                <id>0034</id>
                <name>LC Staff-Telework</name>
            </group>
            <group>
                <id>0035</id>
                <name>LC Ft Meade In Tran Chrg</name>
            </group>
            <group>
                <id>0036</id>
                <name>ILL-Local Call Slip</name>
            </group>
            <group>
                <id>0037</id>
                <name>Kluge Scholar Internal</name>
            </group>
            <group>
                <id>0038</id>
                <name>LC Work Unit/MRC</name>
            </group>
            <group>
                <id>0039</id>
                <name>LC Work Unit/MUS</name>
            </group>
            <group>
                <id>0040</id>
                <name>LC Work Unit/SPM</name>
            </group>
            <group>
                <id>0041</id>
                <name>Reading Room-Basic</name>
            </group>
            <group>
                <id>0042</id>
                <name>LC Work Unit/CALMREF/CONG</name>
            </group>
            <group>
                <id>0043</id>
                <name>LC Work Unit/MSS</name>
            </group>
            <group>
                <id>0044</id>
                <name>LC Work Unit/RBSCD</name>
            </group>
            <group>
                <id>0045</id>
                <name>LC Work Unit/SER</name>
            </group>
            <group>
                <id>0046</id>
                <name>LC Work Unit/G&amp;M</name>
            </group>
            <group>
                <id>0047</id>
                <name>LC Work Unit/AFC</name>
            </group>
            <group>
                <id>0048</id>
                <name>LC Work Unit/PRD</name>
            </group>
            <group>
                <id>0049</id>
                <name>LC Work Unit/AMED</name>
            </group>
            <group>
                <id>0050</id>
                <name>LC Work Unit/P&amp;P</name>
            </group>
            <group>
                <id>0051</id>
                <name>LC Work Unit/LL</name>
            </group>
            <group>
                <id>0052</id>
                <name>LC Work Unit/MUS/RARE</name>
            </group>
            <group>
                <id>0053</id>
                <name>LC Work Unit/VHP</name>
            </group>
            <group>
                <id>0054</id>
                <name>Kluge Scholar External</name>
            </group>
            <group>
                <id>0055</id>
                <name>Zoo Request</name>
            </group>
            <group>
                <id>0056</id>
                <name>Service Academy Charge</name>
            </group>
            <group>
                <id>0057</id>
                <name>LC Work Unit/CALMREF/ILL</name>
            </group>
            <group>
                <id>0058</id>
                <name>LC Work Unit/AD</name>
            </group>
        </groups>
    </sch:let>
    <!-- ****************************
         Here ends the value lookups 
         ****************************
    -->
    <xsl:key name="lookup-patron-groups" match="group" use="name"/>

    <sch:pattern id="json-children_presence">
        <sch:rule context="/mlj:json">
            <sch:assert test="@type = 'object'" diagnostics="type_att_object"/>
            <sch:assert test="mlj:externalSystemId">The element /json/externalSystemId is not
                present but is expected.</sch:assert>
            <sch:assert test="mlj:barcode">The element /json/barcode is not present but is
                expected.</sch:assert>
            <sch:assert test="mlj:active">The boolean /json/active is not present but is
                expected.</sch:assert>
            <sch:assert test="mlj:patronGroup">The element /json/patronGroup is not present but is
                expected.</sch:assert>
            <sch:assert test="mlj:personal">The element /json/personal is not present but is
                expected.</sch:assert>
            <sch:assert test="mlj:enrollmentDate">The element /json/enrollmentDate is not present
                but is expected.</sch:assert>
            <sch:assert test="mlj:expirationDate">The element /json/expirationDate is not present
                but is expected.</sch:assert>
        </sch:rule>
    </sch:pattern>
 
    <sch:pattern id="json-children_values">
        <sch:rule context="mlj:externalSystemId">
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:barcode">
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <!-- below active: if active is true, barcode=externalSystemId and should only be one token;
                    if false, there needs to be a header deleted=true
        -->
        <sch:rule context="mlj:active">
            <sch:assert test=". = 'true'">All migrated users should be active = true; if the value is false, there is an error in the migration code.</sch:assert>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:patronGroup">
            <sch:assert test="key('lookup-patron-groups', ., $patron_groups_list)"
                diagnostics="element_enum"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:personal">
            <sch:assert test="@type = 'object'" diagnostics="type_att_object"/>
            <sch:assert test="mlj:lastName">The element /json/personal/lastName is not present but
                is REQUIRED.</sch:assert>
            <sch:assert test="mlj:firstName">The element /json/personal/firstName is not present but
                expected.</sch:assert>
            <!-- middleName not always expected -->
            <!-- preferredFirstName not always expected -->
            <!-- mobilePhone not always expected -->
            <!-- phone not always expected -->
            <!-- addresses not always expected-->
            <sch:assert test="mlj:email">The element /json/personal/email is not present but
                R.</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="personal-children_values">
        <sch:rule context="mlj:lastName">
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:firstName">
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:middleName">
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:preferredFirstName">
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:mobilePhone">
            <sch:assert test="matches(., '^([0-9]{3}-[0-9]{3}-[0-9]{4})$')">The value of
                personal/mobilePhone does not follow the expected pattern XXX-XXX-XXXX.</sch:assert>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:phone">
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:addresses">
            <sch:assert test="@type = 'array'" diagnostics="type_att_array"/>
            <sch:assert test="mlj:json">The element /json/personal/addresses/json is not present but
                is expected. </sch:assert>
        </sch:rule>
        <sch:rule context="mlj:email">
            <sch:assert test="matches(., '[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]')">The
                email address at personal/email does not follow the expected pattern.</sch:assert>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
    </sch:pattern>

    <sch:pattern id="addresses-children_values">
        <sch:rule context="//mlj:addresses/mlj:json">
            <sch:assert test="@type = 'object'" diagnostics="type_att_object"/>
            <!-- no addressId expected -->
            <sch:assert test="mlj:addressTypeId">The element personal/addresses/json/addressTypeId
                is REQUIRED.</sch:assert>
            <sch:assert test="mlj:addressLine1">The element personal/addresses/json/addressLine1 is
                expected.</sch:assert>
            <!-- addressLine2 -->
            <!-- city -->
            <!-- region -->
            <!-- postalCode -->
            <!-- countryId -->
        </sch:rule>
    </sch:pattern>
    <sch:pattern id="addresses-json_children-values">
        <sch:rule context="mlj:addressTypeId">
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:addressLine1">
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:addressLine1">
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:city">
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:region">
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:postalCode">
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
        <sch:rule context="mlj:countryId">
            <!-- Probably need a lookup for this -->
            <sch:assert test="text()" diagnostics="element_value_expected"/>
            <sch:assert test="@type = 'string'" diagnostics="type_att_string"/>
        </sch:rule>
    </sch:pattern>

    <sch:diagnostics>
        <sch:diagnostic id="element_value_expected">The element <sch:value-of
                select="name(parent::node())"/>/<sch:value-of select="name(.)"/>, if present, must
            have a value.</sch:diagnostic>
        <sch:diagnostic id="type_att_string"><sch:value-of select="name(parent::node())"
                />/<sch:value-of select="name(.)"/>/@type must be present and its value must be
            "string."</sch:diagnostic>
        <sch:diagnostic id="type_att_object"><sch:value-of select="name(parent::node())"
                />/<sch:value-of select="name(.)"/>/@type must be present and its value must be
            "object."</sch:diagnostic>
        <sch:diagnostic id="type_att_array"><sch:value-of select="name(parent::node())"
                />/<sch:value-of select="name(.)"/>/@type must be present and its value must be
            "array."</sch:diagnostic>
        <sch:diagnostic id="element_enum">The value of <sch:value-of select="name(parent::node())"
                />/<sch:value-of select="name(.)"/> is incorrect, it must agree with a controlled
            vocabulary.</sch:diagnostic>
    </sch:diagnostics>
</sch:schema>
