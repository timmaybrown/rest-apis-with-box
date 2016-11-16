/**
* Classic way of returning JSON
*/
component extends="coldbox.system.EventHandler"
{


	public any function index
	( event, rc, prc )
	{
		var mydata = {
			"firstName" = "Jason",
			"lastName" = "Borne"
		};
		cfheader( name="Content-Type", value="application/json" );
		return serializeJSON( mydata );
	}


}