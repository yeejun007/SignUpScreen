//
//  ViewController.h
//  SignUpScreen
//
//  Created by 송이준 on 22/07/2020.
//  Copyright © 2020 yeejun. All rights reserved.
//

#import <UIKit/UIKit.h>

// UITextFieldDelegate는 apple이 내부적으로 구현해둔 protocol이다.
// 즉 apple이 내부적으로 구현해둔 UITextFieldDelegate 내부의 메소드 선언부를 상속받은 거임
// 그 메소드들이 어떻게 작동할지에 대해서는 구현부 파일에서 구현해주면 된다 
@interface ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *idTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UITextField *telTextField;
@property (weak, nonatomic) IBOutlet UITextField *blogTextField;
@property (weak, nonatomic) IBOutlet UITextView *resultTextView;

- (IBAction)signUpAction:(id)sender;

@end

