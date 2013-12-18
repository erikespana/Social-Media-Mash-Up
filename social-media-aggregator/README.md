# Social Media Aggregator 2.1 #

Requires: Cascade Server 6.10 with Velocity 1.7
	
### Instructions ###
* Create a Feed Block for each social media's RSS feed.
* Create a Structured Data Block using the **feed-aggregator.xml** data definition.
* Edit the Structured Data Block.
* For each Feed Block:	
	* Create a new "Feed" group.
	* Attach the Feed Block using the block chooser field.
	* Leave Mute = No unless you need to troubleshoot.
* Click Submit to save changes to the Structured Data Block.
* Create a template called "XML" using **template.xml**.
* Create an "XML" Configuration Set.
* Create an "XML" Content Type.
* Create a page asset using the "XML" Content Type.
	* Assign the Structured Data Block to the default block.
	* Assign **feed-block-aggregator.vm** as the default region.

### What's here ###
* **feed-aggregator.xml (Data Definition)**
	
	This is the data definition for the Structured Data Block, which is aggregates one or more [feed blocks](http://www.hannonhill.com/kb/XML-Feed-Block/).
    
    `<system-data-structure>
    <feed>
        <stream/>
        <streamType/>
        <mute/>
    </feed>
    ...
    </system-data-structure>`
* **feed-block-aggregator.vm**
	
	Parses a Structured Data Block and returns an XML feed of each Feed Block's most recent status update.    
	Feed Blocks supported:
    * WordPress RSS 0.92, 2.0
    * [Facebook RSS] (http://bit.ly/gettingfacebookfeeds)
    * [Twitter API user_timeline XML] (http://bit.ly/twiterapirest)
    * [Other chatter feeds] (http://muse.union.edu/espanae/2011/12/06/chatter-feed-2-1/)

### History ###
* [Social Media Aggregator 2.1] (http://muse.union.edu/espanae/2011/12/06/chatter-feed-2-1/)
* [Social Media Aggregator 2.0] (http://bit.ly/tvS7Py)