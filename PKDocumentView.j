//	PKDocumentView.j
//	PaperKit
	
@import <AppKit/CPView.j>
@import "PKDriver.j"

@implementation PKDocumentView : CPView  {
	
	CPURL documentURL @accessors(readonly);
	PKDriver documentDriver @accessors(readonly);
	id delegate @accessors;
	//	[[self delegate] documentView:self didLoadDocumentatURL:anURL];
	//	[[self delegate] documentView:self didFailLoadingDocumentatURL:anURL];
	
}

+ (PKDriver) defaultDriverForDocumentAtURL:(CPURL)anURL {
	
	//	Check if it is an iDevice, in that case return [PKDriverNative driver] or so
	//	If possible, check if it’s a Mac, and use Preview.app
	//	Just avoid Acrobat at all costs, like a plague
	
	return nil;
	
}

- (id) initWithDocumentAtURL:(CPURL)anURL driver:(PKDriver)aDriver {
	
	if (!anURL) return nil;
	
	self = [self initWithFrame:CGRectMake(0, 0, 128, 128)];
	if (!self) return nil;
	
	[self pkInitialize];
	[self setDriver:(aDriver ? aDriver : [[self class] defaultDriverForDocumentAtURL:anURL])];
	[self setDocumentURL:anURL];
	
	return self;	
	
}

- (id) initWithDocumentAtURL:(CPURL)anURL {
	
	return [self initWithDocumentAtURL:anURL driver:nil];
	
}

- (id) initWithFrame:(CGRect)aFrame {
	
	self = [super initWithFrame:aFrame];
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
	
	//	Work here
	
	var field = [CPTextField labelWithTitle:[CPString stringWithFormat:@"%@ TBD", CPStringFromClass([self class])]];
	
	[field sizeToFit];
	[field setAutoresizingMask:CPViewMinXMargin|CPViewMaxXMargin|CPViewMinYMargin|CPViewMaxYMargin];
	[field setCenter:[self center]];
	
	[self addSubview:field];
	
}

@end