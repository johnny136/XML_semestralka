<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/realitni_portal">
    {
        "Realitni portal s nemovitostmi":
        {
            <xsl:for-each select="byt">
            "Byt":
            {
                "Specifikace":<xsl:for-each select="specifikace">
                {
                    "Cislo zakazky": "<xsl:value-of select="cislo_zakazky"/>",
                    "Adresa": <xsl:for-each select="adresa">
                    {
                        "Mesto": "<xsl:value-of select="mesto"/>",
                        "Obec": "<xsl:value-of select="obec"/>",
                        "Ulice": <xsl:for-each select="ulice">
                        {
                            "Cislo popisne": "<xsl:value-of select="@cislo_popisne"/>",
                            "Cislo orientanci": "<xsl:value-of select="@cislo_orientacni"/>"</xsl:for-each>
                        }
                    },</xsl:for-each>
                     "Podlazi budovy": "<xsl:value-of select="podlazi_budovy"/>",
                     "Konstrukce budovy": "<xsl:value-of select="konstrukce_budovy"/>",
                     "Uzitna plocha": "<xsl:value-of select="uzitna_plocha"/>",
                     "Vybavenost": "<xsl:value-of select="vybavenost"/>",
                     "Parkovani": "<xsl:value-of select="parkovani"/>",
                     "Mistnosti": "<xsl:value-of select="mistnosti"/>",
                     "Socialni zarizeni": "<xsl:value-of select="socialni_zarizeni"/>",
                     "Lokalita": "<xsl:value-of select="lokalita"/>",
                     "Dopravni dostupnost": "<xsl:value-of select="dopravni_dostupnost"/>",
                     "Obcanska vybavenost": "<xsl:value-of select="obcanska_vybavenost"/>",
                     "Ihned k dispozici": "<xsl:value-of select="ihned_k_dispozici"/>",
                     "Zdroj elektriny": "<xsl:value-of select="zdroj_elektriny"/>",
                     "Vodni zdroj": "<xsl:value-of select="vodni_zdroj"/>",
                     "Odpad": "<xsl:value-of select="odpad"/>",
                     "Topeni": "<xsl:value-of select="topeni"/>",
                     "Plny": "<xsl:value-of select="plyn"/>",
                     "Telefon": "<xsl:value-of select="telefon"/>",
                     "Internet": "<xsl:value-of select="internet"/>",
                     "Energeticka narocnost": "<xsl:value-of select="energeticka_narocnost"/>",
                     "Cena": "<xsl:value-of select="cena"/>",<xsl:for-each select="cena">
                         "mena": "<xsl:value-of select="@mena"/>",</xsl:for-each>
                     "Cena za m^2": "<xsl:value-of select="cena_za_metrCtverecni"/>",
                     "Provize v cene": "<xsl:value-of select="provize_v_cene"/>",
                     "Moznost hypoteky": "<xsl:value-of select="moznost_hypoteky"/>",
                     "Prodejce": <xsl:for-each select="prodejce">
                    {
                        "Jmeno": "<xsl:value-of select="jmeno"/>",
                        "Firma": "<xsl:value-of select="firma"/>",
                        "Hodnoceni": "<xsl:value-of select="hodnoceni"/>",
                        "Kontakt": <xsl:for-each select="kontakt">
                        {
                            "Telefon": "<xsl:value-of select="@telefon"/>",
                            "Email": "<xsl:value-of select="@email"/>"</xsl:for-each>
                        }
                    }</xsl:for-each>                
                },</xsl:for-each>
                "Stav budovy": "<xsl:value-of select="stav_budovy"/>",
                "Balkon": "<xsl:value-of select="balkon"/>",<xsl:for-each select="balkon">
                    "plocha": "<xsl:value-of select="@plocha"/>",</xsl:for-each>
                "Stav bytu": "<xsl:value-of select="stav_bytu"/>",
                "Vytah": "<xsl:value-of select="vytah"/>",
                "Poschodi": "<xsl:value-of select="poschodi"/>"
            },</xsl:for-each>


            <xsl:for-each select="dum"> 
            "Dum":
            {   
                "Specifikace":<xsl:for-each select="specifikace">
                {
                    "Cislo zakazky": "<xsl:value-of select="cislo_zakazky"/>",
                    "Adresa": <xsl:for-each select="adresa">
                    {
                        "Mesto": "<xsl:value-of select="mesto"/>",
                        "Obec": "<xsl:value-of select="obec"/>",
                        "Ulice": <xsl:for-each select="ulice">
                        {
                            "Cislo popisne": "<xsl:value-of select="@cislo_popisne"/>",
                            "Cislo orientanci": "<xsl:value-of select="@cislo_orientacni"/>"</xsl:for-each>
                        }
                    },</xsl:for-each>
                     "Podlazi budovy": "<xsl:value-of select="podlazi_budovy"/>",
                     "Konstrukce budovy": "<xsl:value-of select="konstrukce_budovy"/>",
                     "Uzitna plocha": "<xsl:value-of select="uzitna_plocha"/>",
                     "Vybavenost": "<xsl:value-of select="vybavenost"/>",
                     "Parkovani": "<xsl:value-of select="parkovani"/>",
                     "Mistnosti": "<xsl:value-of select="mistnosti"/>",
                     "Socialni zarizeni": "<xsl:value-of select="socialni_zarizeni"/>",
                     "Lokalita": "<xsl:value-of select="lokalita"/>",
                     "Dopravni dostupnost": "<xsl:value-of select="dopravni_dostupnost"/>",
                     "Obcanska vybavenost": "<xsl:value-of select="obcanska_vybavenost"/>",
                     "Ihned k dispozici": "<xsl:value-of select="ihned_k_dispozici"/>",
                     "Zdroj elektriny": "<xsl:value-of select="zdroj_elektriny"/>",
                     "Vodni zdroj": "<xsl:value-of select="vodni_zdroj"/>",
                     "Odpad": "<xsl:value-of select="odpad"/>",
                     "Topeni": "<xsl:value-of select="topeni"/>",
                     "Plny": "<xsl:value-of select="plyn"/>",
                     "Telefon": "<xsl:value-of select="telefon"/>",
                     "Internet": "<xsl:value-of select="internet"/>",
                     "Energeticka narocnost": "<xsl:value-of select="energeticka_narocnost"/>",
                     "Cena": "<xsl:value-of select="cena"/>",<xsl:for-each select="cena">
                         "mena": "<xsl:value-of select="@mena"/>",</xsl:for-each>
                     "Cena za m^2": "<xsl:value-of select="cena_za_metrCtverecni"/>",
                     "Provize v cene": "<xsl:value-of select="provize_v_cene"/>",
                     "Moznost hypoteky": "<xsl:value-of select="moznost_hypoteky"/>",
                     "Prodejce": <xsl:for-each select="prodejce">
                    {
                        "Jmeno": "<xsl:value-of select="jmeno"/>",
                        "Firma": "<xsl:value-of select="firma"/>",
                        "Hodnoceni": "<xsl:value-of select="hodnoceni"/>",
                        "Kontakt": <xsl:for-each select="kontakt">
                        {
                            "Telefon": "<xsl:value-of select="@telefon"/>",
                            "Email": "<xsl:value-of select="@email"/>"</xsl:for-each>
                        }
                    }</xsl:for-each>                
                },</xsl:for-each>
                "Zastavena plocha": "<xsl:value-of select="zastavena_plocha"/>",
                "Plocha parcely": "<xsl:value-of select="plocha_parcely"/>",
                "Oploceni": "<xsl:value-of select="oploceni"/>",
                "Sklep": "<xsl:value-of select="sklep"/>",
                "Podkrovi": "<xsl:value-of select="podkrovi"/>",
                "Zahrada": "<xsl:value-of select="zahrada"/>",<xsl:for-each select="zahrada">
                    "Velikost": "<xsl:value-of select="@velikost"/>",</xsl:for-each>
                "Stav domu": "<xsl:value-of select="stav_domu"/>"
            }<xsl:if test="position() != last()">,</xsl:if></xsl:for-each>  
        }
    }
    </xsl:template>
</xsl:stylesheet>
