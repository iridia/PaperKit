//	PKDriver.j
//	PaperKit
	
@import "PKDriver.j"

@implementation PKDriverNative : PKDriver

//	Returns a new driver suitable for viewing a document.
//	If you want to view another document, create a new driver.

+ (PKDriver) driverForViewingDocumentAtURL:(CPURL)anURL {
	
	return self al;
	
}


//	Usually, this will add something like a CPWebView to the document view, and remove everything else if appropriate
//	The delegate of that private web view is going to be the driver.
//	Returns NO for bad initialization, YES otherwise

- (BOOL) configureDocumentView:(PKDocumentView)aView forViewingDocumentAtURL:(CPURL)anURL {
	
	return NO;
	
}

@end
