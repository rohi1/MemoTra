// Generated by Apple Swift version 3.0 (swiftlang-800.0.46.2 clang-800.0.38)
#pragma clang diagnostic push

#if defined(__has_include) && __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wauto-import"
#include <objc/NSObject.h>
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if defined(__has_include) && __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus) || __cplusplus < 201103L
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if defined(__has_attribute) && __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if defined(__has_attribute) && __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if defined(__has_attribute) && __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if defined(__has_attribute) && __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name) enum _name : _type _name; enum SWIFT_ENUM_EXTRA _name : _type
# if defined(__has_feature) && __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME) SWIFT_ENUM(_type, _name)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if defined(__has_feature) && __has_feature(modules)
@import UIKit;
@import Foundation;
@import CoreGraphics;
@import AdobeCreativeSDKImage;
@import RealmSwift;
#endif

#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
@class UIWindow;
@class UIApplication;

SWIFT_CLASS("_TtC7MemoTra11AppDelegate")
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic, strong) UIWindow * _Nullable window;
- (BOOL)application:(UIApplication * _Nonnull)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey, id> * _Nullable)launchOptions;
- (void)applicationWillResignActive:(UIApplication * _Nonnull)application;
- (void)applicationDidEnterBackground:(UIApplication * _Nonnull)application;
- (void)applicationWillEnterForeground:(UIApplication * _Nonnull)application;
- (void)applicationDidBecomeActive:(UIApplication * _Nonnull)application;
- (void)applicationWillTerminate:(UIApplication * _Nonnull)application;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
@end

@class PostData;
@class UITableView;
@class UITableViewCell;
@class NSBundle;
@class NSCoder;

SWIFT_CLASS("_TtC7MemoTra18HomeViewController")
@interface HomeViewController : UIViewController <UIScrollViewDelegate, UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, weak) IBOutlet UITableView * _Null_unspecified tableView;
@property (nonatomic, copy) NSArray<PostData *> * _Nonnull postArray;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)animated;
- (void)didReceiveMemoryWarning;
- (NSInteger)tableView:(UITableView * _Nonnull)tableView numberOfRowsInSection:(NSInteger)section;
- (UITableViewCell * _Nonnull)tableView:(UITableView * _Nonnull)tableView cellForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (CGFloat)tableView:(UITableView * _Nonnull)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (void)tableView:(UITableView * _Nonnull)tableView didSelectRowAtIndexPath:(NSIndexPath * _Nonnull)indexPath;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class UIImagePickerController;
@class AdobeUXImageEditorViewController;
@class UIImage;

SWIFT_CLASS("_TtC7MemoTra25ImageSelectViewController")
@interface ImageSelectViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate, AdobeUXImageEditorViewControllerDelegate>
- (IBAction)CameraButton:(id _Nonnull)sender;
- (IBAction)LibraryButton:(id _Nonnull)sender;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (void)imagePickerController:(UIImagePickerController * _Nonnull)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *, id> * _Nonnull)info;
- (void)imagePickerControllerDidCancel:(UIImagePickerController * _Nonnull)picker;
- (void)photoEditor:(AdobeUXImageEditorViewController * _Nonnull)editor finishedWithImage:(UIImage * _Nullable)image;
- (void)photoEditorCanceled:(AdobeUXImageEditorViewController * _Nonnull)editor;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

@class NSDate;
@class NSData;
@class RLMRealm;
@class RLMObjectSchema;
@class RLMSchema;

SWIFT_CLASS("_TtC7MemoTra8PostData")
@interface PostData : RealmSwiftObject
@property (nonatomic) NSInteger id;
@property (nonatomic, copy) NSString * _Nonnull title;
@property (nonatomic, copy) NSString * _Nonnull comment;
@property (nonatomic, strong) NSDate * _Nonnull date;
@property (nonatomic, copy) NSString * _Nonnull category;
+ (NSString * _Nullable)primaryKey;
@property (nonatomic, strong) NSData * _Nullable imageData;
- (nonnull instancetype)init OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithValue:(id _Nonnull)value OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithRealm:(RLMRealm * _Nonnull)realm schema:(RLMObjectSchema * _Nonnull)schema OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)initWithValue:(id _Nonnull)value schema:(RLMSchema * _Nonnull)schema OBJC_DESIGNATED_INITIALIZER;
@end

@class UITextField;
@class UIImageView;
@class UITextView;
@class UILabel;

SWIFT_CLASS("_TtC7MemoTra17PostTableViewCell")
@interface PostTableViewCell : UITableViewCell
@property (nonatomic, weak) IBOutlet UITextField * _Null_unspecified TitleText;
@property (nonatomic, weak) IBOutlet UIImageView * _Null_unspecified postImageView;
@property (nonatomic, weak) IBOutlet UITextView * _Null_unspecified CommentTextView;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified TagLabel;
@property (nonatomic, weak) IBOutlet UILabel * _Null_unspecified dateLabel;
- (void)awakeFromNib;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setPostDataWithPostData:(PostData * _Nonnull)postData;
- (nonnull instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString * _Nullable)reuseIdentifier OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC7MemoTra18PostViewController")
@interface PostViewController : UIViewController
@property (nonatomic, strong) UIImage * _Null_unspecified image;
@property (nonatomic, weak) IBOutlet UIImageView * _Null_unspecified imageView;
@property (nonatomic, weak) IBOutlet UITextField * _Null_unspecified TitleTextField;
@property (nonatomic, weak) IBOutlet UITextField * _Null_unspecified TagTextField;
@property (nonatomic, weak) IBOutlet UITextView * _Null_unspecified Comment;
@property (nonatomic, readonly, strong) PostData * _Nonnull realmDB;
@property (nonatomic, strong) PostData * _Nullable Cell;
- (IBAction)SaveButton:(id _Nonnull)sender;
- (IBAction)CancelButton:(id _Nonnull)sender;
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (void)dissmissKeyboad;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end


SWIFT_CLASS("_TtC7MemoTra17TagViewController")
@interface TagViewController : UIViewController
- (void)viewDidLoad;
- (void)didReceiveMemoryWarning;
- (nonnull instancetype)initWithNibName:(NSString * _Nullable)nibNameOrNil bundle:(NSBundle * _Nullable)nibBundleOrNil OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)aDecoder OBJC_DESIGNATED_INITIALIZER;
@end

#pragma clang diagnostic pop