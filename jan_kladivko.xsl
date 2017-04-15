<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="text"/>
    <xsl:template match="/konfigurace_hry">
    {
        "Konfigurace hry":
        {
            "Nastaveni grafiky":<xsl:for-each select="nastaveni_grafiky">
            {
                "Obecne":<xsl:for-each select="obecne">
                {
                    "Rozliseni": "<xsl:value-of select="rozliseni"/>",
                    "VSync": "<xsl:value-of select="vsync"/>",
                    "Rezim zobrazeni": "<xsl:value-of select="rezim_zobrazeni"/>",
                    "Hustota_zalidneni": "<xsl:value-of select="hustota_zalidneni"/>",
                    "Stiny": "<xsl:value-of select="stiny"/>",
                    "Krajina": "<xsl:value-of select="krajina"/>",
                    "Voda": "<xsl:value-of select="voda"/>",
                    "Hustota travy": "<xsl:value-of select="hustota_travy"/>",
                    "Kvalita textur": "<xsl:value-of select="kvalita_textur"/>",
                    "Uroven detailu": "<xsl:value-of select="uroven_detailu"/>"
                },</xsl:for-each>
                "Postprocessing":<xsl:for-each select="postprocessing">
                {
                    "Motion Blur": "<xsl:value-of select="motion_blur"/>",
                    "Anti-Aliasing": "<xsl:value-of select="anti-aliasing"/>",
                    "Bloom": "<xsl:value-of select="bloom"/>",
                    "Vyostrovani": "<xsl:value-of select="vyostrovani"/>",
                    "Zastineni okolim": "<xsl:value-of select="zastineni_okolim"/>",
                    "Svetelne paprsky": "<xsl:value-of select="svetelne_paprsky"/>"
                },</xsl:for-each>
                "Gamma": "<xsl:value-of select="gamma"/>"
            },</xsl:for-each> 
            
            <xsl:for-each select="uzivatelsky_profil[postup >= 30]">
            "Uzivatelsky profil":
            {
                "Jmeno": "<xsl:value-of select="jmeno"/>",
                "Postup": "<xsl:value-of select="postup"/>%",
                "Nastaveni profilu":<xsl:for-each select="nastaveni_profilu">
                {
                    "Zvuk":<xsl:for-each select="zvuk">
                    {
                        "Celkova hlasitost": "<xsl:value-of select="celkova_hlasitost"/>%",
                        "Hlasitost hudby": "<xsl:value-of select="hlasitost_hudby"/>%",
                        "Hlasitost zvuku": "<xsl:value-of select="hlasitost_zvuku"/>%",
                        "Hlasitost dialogu": "<xsl:value-of select="hlasitost_dialogu"/>%"
                    },</xsl:for-each>
                    "Ovladani":<xsl:for-each select="ovladani">
                    {
                        "Citlivost mysi":<xsl:for-each select="citlivost_mysi">
                        {
                            "V rozhrani": "<xsl:value-of select="@vRozhrani"/>",
                            "Ve hre": "<xsl:value-of select="@veHre"/>"                            
                        },</xsl:for-each>
                        "Prevraceni kamery":<xsl:for-each select="prevraceni_kamery">
                        {
                            "Mys":<xsl:for-each select="mys">
                            {
                                "Osa X": "<xsl:value-of select="@osaX"/>",
                                "Osa Y": "<xsl:value-of select="@osaY"/>" 
                            },</xsl:for-each>
                            "Ovladac":<xsl:for-each select="ovladac">
                            {
                                "Osa X": "<xsl:value-of select="@osaX"/>",
                                "Osa Y": "<xsl:value-of select="@osaY"/>"
                            }</xsl:for-each>
                        },</xsl:for-each>
                        "Citlivost prave packy":<xsl:for-each select="citlivost_pravePacky">
                        {
                            "Kamera": "<xsl:value-of select="@kamera"/>",
                            "Mireni": "<xsl:value-of select="@mireni"/>" 
                        }</xsl:for-each>
                    },</xsl:for-each>
                    "Hratelnost":<xsl:for-each select="hratelnost">
                    {
                        "Vyukove zpravy": "<xsl:value-of select="vyukove_zpravy"/>",
                        "Automaticke dorazeni": "<xsl:value-of select="automaticke_dorazeni"/>",
                        "Efekt Rybi oko": "<xsl:value-of select="efekt_rybiOko"/>",
                        "Vystredeni kamery": "<xsl:value-of select="vystredeni_kamery"/>",
                        "Automaticke ulozeni": "<xsl:value-of select="automaticke_ulozeni"/>",
                        "Zvysovani sil protivniku": "<xsl:value-of select="zvysovaniSil_protivniku"/>"
                    },</xsl:for-each>
                    "Jazyk":<xsl:for-each select="jazyk">
                    {
                        "Dialogy": "<xsl:value-of select="@dialogy"/>",
                        "Texty": "<xsl:value-of select="@texty"/>",
                        "Titulky": "<xsl:value-of select="titulky"/>"
                    },</xsl:for-each>
                    "Rozhrani":<xsl:for-each select="rozhrani">
                    {
                        "Viditelnost": "<xsl:value-of select="viditelnost"/>",
                        "Velikost": "<xsl:value-of select="velikost"/>",
                        "Zobrazovat zaznam akci": "<xsl:value-of select="zobrazovat_zaznamAkci"/>",
                        "Minimapa":<xsl:for-each select="minimapa">
                        {
                            "Zobrazeni": "<xsl:value-of select="zobrazeni"/>",
                            "Otaceni": "<xsl:value-of select="otaceni"/>",
                            "Cesta k ukolum": "<xsl:value-of select="cesta_kUkolum"/>",
                            "Zajimava mista": "<xsl:value-of select="zajimava_mista"/>",
                            "Objevena mista": "<xsl:value-of select="objevena_mista"/>"
                        },</xsl:for-each>
                        "Zobrazovat ukoly": "<xsl:value-of select="zobrazovat_ukoly"/>",
                        "Zobrazeni stavu":<xsl:for-each select="zobrazeni_stavu">
                        {
                            "Zivoty": "<xsl:value-of select="@zivot"/>",
                            "Mana": "<xsl:value-of select="@mana"/>",
                            "Energie": "<xsl:value-of select="@energie"/>"
                        },</xsl:for-each>
                        "Zobrazeni napovedy": "<xsl:value-of select="zobrazeni_napovedy"/>",
                        "Nahled poskozenych predmetu": "<xsl:value-of select="nahled_poskozenychPredmetu"/>"
                    }</xsl:for-each>
                }</xsl:for-each>
                }<xsl:if test="position() != last()">,</xsl:if></xsl:for-each> 
        }
    }    
    </xsl:template>
</xsl:stylesheet>
