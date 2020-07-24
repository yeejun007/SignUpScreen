//
//  ViewController.m
//  SignUpScreen
//
//  Created by 송이준 on 22/07/2020.
//  Copyright © 2020 yeejun. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize nameTextField, idTextField, passwordTextField, telTextField, blogTextField, resultTextView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // delegate 이벤트가 발생하면 나 자신에게 그 이벤트를 날린다고 명시해줌
    nameTextField.delegate = self;
    idTextField.delegate = self;
    passwordTextField.delegate = self;
    telTextField.delegate = self;
    blogTextField.delegate = self;
}


- (IBAction)signUpAction:(id)sender {
    resultTextView.text = [NSString stringWithFormat: @"%@ 님 가입을 축하드립니다.", nameTextField.text];
}

// UITextFieldDelegate에서 상속받은 메소드들에 대한 구현부를 작성해준다
// -text까지 쳐보면 어떤 메소드들을 받았는지 알 수있음
// delegate는 일종의 콜백 메소드라고 보면 된다(apple이 내부적으로 구현해둔..)
// resignFirstResponder <- 포커스를 사라지게 해서 키보드가 내려가게 할 수 있다
// UiResponder 클래스를 살펴보기
// objective c 의 클래스 계층도를 알아야함
// ex) UiViewController > UiView > textField > ...
// delegate로 넘겨받는 class가 첫번째 인자로 넘겨진다
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

// 입력칸 바깥을 터치했을때 키보드가 사라지도록..
// label 위치를 터치해도 키보드가 사라지는데, 이건 웹에서의 이벤트 버블링과 같은 원리임.
// label이 이 터치 이벤트를 처리하지 못하면 그 상위 클래스(객체)로 이벤트를 전달하는데
// 상위에 viewController가 어딘가에 위치하고 있어서 이 이벤트가 처리된다
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
