<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output indent="yes" method="xml"/>

    
    <!-- Special Interest Feature for Spectate Callouts

    Embeds the 'body' code created in http://my.spectate.com.
    -->    
    <xsl:template match="system-data-structure[spectateCallout]" mode="SPIF-LEFT-COLUMN">
        <xsl:copy-of select="spectateCallout/body/node()"/>
    </xsl:template>

    <xsl:template match="system-data-structure[spectateCallout]" mode="SITEFOOTER-SPECTATE">
        <xsl:copy-of select="spectateCallout/footer/node()"/>
    </xsl:template>
    
    <!-- Special Interest Feature promoting Admissions Bloggers

    Displays a random blogger's image and an excerpt from their most recent post.
    Expects the "Admisions blogs" Structured Data Block attached to the SPIF-right-col region.
    -->    
    <xsl:template match="system-data-structure[randomWordpress]" mode="right-column">
        <xsl:param name="vertical-position"/>
        <xsl:param name="feeds" select="randomWordpress/block/content/system-data-structure/feed[mute = 'No']"/>
        
        <!-- Pre-load the link, thumbnail, post and blog title for each blogger's most recent post, using a PHP array.
            For Example:
            $bloggers[]= array(
                0 => ""http://muse.union.edu/unfiltered/path/to/blog/post/",
                1 => "/img/bloggers/blogger.jpg",
                2 => "Excerpt",
                3 => "Blog title"
            );
            $bloggers[]= array(
            ...
        -->
        <xsl:comment>#START-CODE
        &lt;?php
            <xsl:apply-templates select="$feeds"/>
            
            $index = rand(0, ( count($bloggers) - 1 ));
            $blog = $bloggers[ $index ];
        ?&gt;
        
        #END-CODE</xsl:comment>
        
        
        <div class="feature-widget aside-widget aside-banner-overlap small-slides-outer">
            <xsl:if test="$vertical-position = 'bottom'">
                <xsl:attribute name="style">margin-top:20px;</xsl:attribute>
            </xsl:if>
            <div class="feature-header">
                <div class="title"><xsl:value-of select="randomWordpress/title"/></div>
                <div class="subtitle"><xsl:value-of select="randomWordpress/subtitle"/></div>
            </div>
            
            <div class="feature-content">
                <xsl:call-template name="randomWordpress"/>   
            </div>
            
        </div>
    </xsl:template>
    
    <xsl:template match="feed">
        $bloggers[]= array(
            0 =&gt; "<xsl:value-of select="stream/content/rss/channel/item[1]/link"/>",
            1 =&gt; "<xsl:value-of select="spif/thumbnail/path"/>",
            2 =&gt; "<xsl:value-of select="stream/content/rss/channel/item[1]/title"/>",
            3 =&gt; "<xsl:value-of select="stream/content/rss/channel/title"/>",
        );
    </xsl:template>
    
    <xsl:template name="randomWordpress">

        <!-- Pick a random blog. -->
        <xsl:comment>#START-CODE
        &lt;?php
            echo '
                &lt;div class="small-slides"&gt;
                    &lt;a href="' . $blog[0] . '"  target="_blank"&gt;
                        &lt;img src="' . $blog[1] . '" alt="' . $blog[3] . '"/&gt;
                    &lt;/a&gt;
                &lt;/div&gt;
            &lt;/div&gt;
            &lt;div class="feature-footer"&gt;
            &lt;div class="description"&gt;
                &lt;q&gt;' . $blog[2] . '&lt;/q&gt;
                &lt;br/&gt;
                &lt;a href="'.$blog[0].'" target="_blank" title="'.$blog[2].'"&gt;Read more...&lt;/a&gt;
            &lt;/div&gt;';
        ?&gt;
        #END-CODE</xsl:comment>
    </xsl:template>
    

                            
</xsl:stylesheet>