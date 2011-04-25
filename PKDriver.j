//	PKDriver.j
//	PaperKit

@implementation PKDriver : CPObject {
	
	CPURL documentURL @accessors(readonly);
	
}

//	Returns a new driver suitable for viewing a document.
//	If you want to view another document, create a new driver.

+ (PKDriver) driverForViewingDocumentAtURL:(CPURL)anURL {
	
	return [[self alloc] initWithDocumentURL:anURL];
	
}

- (id) initWithDocumentURL:(CPURL)anURL {
	
	self = [super init];
	if (!self) return nil;
	[self pkInitialize];
	return self;
	
}

- (id) initWithCoder:(CPCoder)aDecoder {
	
	self = [super initWithCoder:aDecoder];
	if (!self) return nil;
	[self pkInitialize];
	return self;
	
}

- (void) pkInitialize {
	
	//	Do nothing
	
}

//	Usually, this will add something like a CPWebView to the document view, and remove everything else if appropriate
//	The delegate of that private web view is going to be the driver.
//	Returns NO for bad initialization, YES otherwise

- (BOOL) configureDocumentView:(PKDocumentView)aView {
	
	//	Unsure if this is even sane
	//	if ([self documentView])
	//	return NO;
	
	return NO;
	
}

@end
