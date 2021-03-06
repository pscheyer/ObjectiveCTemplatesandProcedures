This template covers adding a view controller using the Main.storyboard file in an xcode project, for a tabbed application. An example finished product is our Calcohol application from the Bloc tutorials. 

1. Create a project - single view application is fine.

2. Rename the `ViewController.h` and `ViewController.m` appropriately for the default view of your app- the page you want people to show up on.

3. Enter the Storyboard file, `Main.storyboard`
  *select the view controller you want to act as a default for the app (it should be the only available view controller) 
  *go to editor in the menu bar (top of the screen, the bar with file, edit, etc … , editor.)
  *select 'embed in'
  *select 'tab bar controller'

4. Add additional view controllers by 
  *dragging them out of the objects list and then 
  *ctrl-dragging to them from the tab bar controller

5. Link your new view controllers to .h and .m files by
  *clicking file-new in the .h and .m files on the left
  *selecting new cocoa touch class
  *naming the new file appropriately
  *clicking on the new view controller in the storyboard
  *click on the yellow stacked squares in the circle at the top of the view controller
  *in the Utilities Pane click the Identity Inspector (The Top-Right, under the venn diagram and directly contradictory arrows, select the driver's license.). 
  *From this, click in the text box next to the word 'Class,' and start typing the appropriate name of your .h and .m files. For example, `ConnectionsViewController`. It should let you autocomplete with tab.

5. Once you've linked your view controllers, change their titles by
  *clicking on the __view controller__ again, 
  *click on the yellow stacked squares in the circle at the top of the view controller
  *In the Utilities Pane (top right, under the venn diagram and directly contradictory arrows), select the *Attributes Inspector* (the spaceship flying down)
  *In the View Controller Title change the name to whatever. In our example it's Connections. 


6. Now we change the title of the tab bar button by 1 of 2 methods.

Interface Builder:
  *click on the particular view controllers
  *click on the buttons at the bottom of them in the tab bar
  *rename the button using the properties pane.


Or, using code, (__note; the code method breaks the multipeer tutorial, which later assumes you had done everything in interface builder. They don't play nice.__)


  *Enter your AppDelegate.m file.
  *in the section below `- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {` add some code like the following for a 3 tab bar named chatbox, filesharing, etc. 

```objective-c
    ChatBoxViewController *chatBoxViewController = [[ChatBoxViewController alloc] init];
    FileSharingViewController *fileSharingViewController = [[FileSharingViewController alloc] init];
    ConnectionsViewController *connectionsViewController = [[ConnectionsViewController alloc] init];
    UITabBarController *tabBarVC = [[UITabBarController alloc] init];
    tabBarVC.viewControllers = @[chatBoxViewController, fileSharingViewController, connectionsViewController];
    
    [[tabBarVC.tabBar.items objectAtIndex:0] setTitle:NSLocalizedString(@"Chat Box", @"comment")];
    
    [[tabBarVC.tabBar.items objectAtIndex:1] setTitle:NSLocalizedString(@"File Sharing", @"comment")];
    
    [[tabBarVC.tabBar.items objectAtIndex:2] setTitle:NSLocalizedString(@"Connections", @"comment")];

    
    self.window.rootViewController = tabBarVC;
    [self.window makeKeyAndVisible];
```

7. Test your app by running it. Prior to this I recommend changing the colors of each tab by selecting the `-(void)viewDidLoad]{` functions and replacing them with the following:
```objective-c
- (instancetype) init {
    self = [super init];
    if (self) {
        self.title = NSLocalizedString(@"Chat Box", nil);
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    // Do any additional setup after loading the view, typically from a nib.
}```

Change the colors of each tab so you can see if you successfully navigate around. whiteColor to redColor, blueColor, etc. 


Sources: [Tab Bar Controllers in Storyboards](http://makeapppie.com/2015/01/27/tab-bar-controllers-in-storyboards/), as prompted by [Understanding Multipeer Connectivity Framework in iOS 7- Part 1](http://www.appcoda.com/intro-multipeer-connectivity-framework-ios-programming/) which had outdated details on building a tab bar controller.


