#	PaperKit

Embed a PDF viewer in your Cappuccino application.
Evadne Wu at Iridia Productions.
New BSD licensed, unless otherwise specified.
The FlexPaper library, which works with PaperKit via a driver, is itself under GPL.


## Using PaperKit

For example, in a view controller you might want to do it this way.  Notice that this code might not work on the stock project (Cappuccino or PaperKit), because I totally made it up at this point for the sake of exploration:

	- (void) loadView {

		[self setDocumentView:[[PKDocumentView alloc] initWithDocumentAtURL:[CPURL URLWithString:@"document.pdf"]]];
		[[self documentView] setDriver:PKDocumentViewPaperKitDriverMake()];
		[[self documentView] setDelegate:self];
		[[self view] addSubview:[self documentView]];
		
		[[self documentView] setAlphaValue:0.0];
	
	}
	
	- (void) documentView:(PKDocumentView)aDocumentView didLoadDocumentAtURL:(CPURL)loadedURL {
		
		//	CPParameterAssert([self documentView] == aDocumentView);
		[[self documentView] setAlphaValue:1.0];
		
	}
