{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 28.0, 53.0, 305.0, 380.0 ],
		"bglocked" : 0,
		"defrect" : [ 28.0, 53.0, 305.0, 380.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 11.1,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Connect to jit.cellblock like this",
					"numinlets" : 1,
					"fontsize" : 11.1,
					"patching_rect" : [ 73.0, 158.0, 200.0, 20.0 ],
					"numoutlets" : 0,
					"id" : "obj-18",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Bang to select a file or send a path to a file. The file will be overwritten!",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 11.1,
					"patching_rect" : [ 90.0, 20.0, 156.0, 47.0 ],
					"numoutlets" : 0,
					"id" : "obj-17",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/Users/USERNAME/output.csv",
					"numinlets" : 2,
					"fontsize" : 11.1,
					"patching_rect" : [ 97.0, 83.0, 179.0, 18.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"id" : "obj-14",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "© 2009 Adam Murray 2009\nadam@compusition.com \nMIT License",
					"linecount" : 3,
					"numinlets" : 1,
					"fontsize" : 11.1,
					"patching_rect" : [ 52.0, 309.0, 179.0, 47.0 ],
					"numoutlets" : 0,
					"id" : "obj-12",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"patching_rect" : [ 55.0, 78.0, 31.0, 31.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "grab",
					"numinlets" : 1,
					"fontsize" : 11.1,
					"patching_rect" : [ 33.0, 158.0, 36.0, 20.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"id" : "obj-8",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "cellblock2csv",
					"numinlets" : 2,
					"fontsize" : 11.1,
					"patching_rect" : [ 33.0, 130.0, 83.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "dump" ],
					"id" : "obj-7",
					"fontname" : "Verdana"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"fontsize" : 11.1,
					"patching_rect" : [ 50.0, 191.0, 202.0, 76.0 ],
					"numoutlets" : 4,
					"rows" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"savemode" : 1,
					"selmode" : 5,
					"cols" : 3,
					"id" : "obj-1",
					"fontname" : "Verdana",
					"cellmap" : [ [ 0, 0, 1 ], [ 0, 1, 4 ], [ 0, 2, "text" ], [ 0, 3, "a", "b", "c" ], [ 1, 0, 2 ], [ 1, 1, 5 ], [ 1, 2, "a" ], [ 1, 3, "d", "e", "f" ], [ 2, 0, 3 ], [ 2, 1, 6 ], [ 2, 2, "b" ], [ 2, 3, 1, "a", 2, "b" ] ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-8", 1 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [ 42.5, 183.0, 24.0, 183.0, 24.0, 125.0, 42.5, 125.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [ 64.5, 117.0, 106.5, 117.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-7", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
