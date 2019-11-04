//void  main() {
  /*print('aa');
  //Number  int double
  int score = 23;
  double percentage = 3.14;
  print(percentage);
  //String
  String name = ' wu';
  bool siValid = true;
  String s1 = 'i\'m henry';
  //String 拼接
  String myName = "米斯物吴";
  print("my name is" + myName);
  //不同类型的拼接
  print("my name's length is " + name.length.toString());
  print("my name's length is${name.length}");
  //$变量
  int a = 20;
  int b = 10;
  print("the sum of $a and $b is ${a + b}");
  //分支
  var salary = 2000;
  if (salary > 2000) {
    print("$salary 大于2000");
  } else if (salary < 2000) {
    print("$salary 小于2000");
  } else {
    print("$salary 等于2000");
  }
  int c = 2;
  int d = 3;
  if (c < d) {
    print("$c is smaller");
  } else {
    print("$d is smaller");
  }
  //？ ：表达式d
  a<b ?print('$c is smaller'):print('$d is smaller');
  //??表达式
  String name1='米斯特吴';
  String nameToPrint= name1 ??"27732@qq.com";
  print(nameToPrint);
  //switch
  String grade = "A";
  switch(grade){
    case 'A':
      print('very good');
      break;
    case 'B':
      print('good');
      break;
    case 'C':
      print('good enough, work hard');
      break;
      break;
    case 'D':
      print('You have failed');
      break;
  }*/

//  for loop
//    for (int i=0;i<10;i++){
//      if(i%2 == 0){
//        print(i);
//      }
//    }
//    List people = ["henry","elyse","bucky"];
//    for(int i = 0;i<people.length;i++){
//      print(people[i]);
//    }
//    for(String person in people){
//      print(person);
//    }
    //while loop 不知道次数时使用
//    int i = 0;
//    while (i<people.length){
//      print(people[i]);
//      i++;
//    }
//    do while
//      int i=0;
//    do {
//      print(people[i]);
//      i++;
//    }while(i<people.length);

//break 停止循环
//    for(int i=0;i<=10;i++){
//      if(i==5){
//        break;
//      }
//      print(i);
//    }
    // 指定停止某个循环
  //outerLoop
//  for(int i=1;i<=3;i++){
////      innerLoop
//      for(int j =0;j<=3;j++){
//        print("$i $j");
//        if(i ==2 && j==2){
//          break innerLoop;
//        }
//      }
//  }
  //continue 停止本次循环，后面继续执行
//  for(int i=1;i<=10;i++){
//      if( i==5){
//          continue;
//      }
//      print(i);
//  }
//continue 停止指定某次循环
//  outerLoop
//  for(int i=1;i<=3;i++){
////      innerLoop
//      for(int j =0;j<=3;j++){
//        if(i ==2 && j==2){
//          continue ;
//        }
//        print("$i $j");
//      }
//  }
//---------------------函数-------------------
//        1.定义函数
//      void sumValue(){
//        int a=2;
//        int b=4;
//        int sum = a+b;
//        print("$a + $b 的和为 $sum");
//      }
//        2.函数传参

//  void sumValue(int a,int b){
//    int sum = a+b;
//    print("$a + $b 的和为 $sum");
//  }
//        3.函数返回值
//  int sumValue(int a,int b){
//    int sum = a+b;
//    return sum;
//  }
//  String sumValue1(int a,int b){
//    int sum = a+b;
//    return sum.toString();
//  }
//  int sum=sumValue(3,3);
//  print(sum);
//        4.函数默认返回值
//  void sumValue(int a,int b) =>print("$a + $b 的和为 ${a+b}");
//  sumValue(4,4);

//        6.箭头函数（有返回值 ）
//  int sumValue(int a,int b) =>a+b;
//  int sum=sumValue(4,4);
//  print(sum);
//        7.函数参数（可选择参数）
//  void printCities(String name1,String name2,String name3){
//      print("name 1 is $name1");
//      print("name 2 is $name2");
//      print("name 3 is $name3");
//  }
//  void printCountries(String name1,[String name2,String name3]){ //加[] 可传可不传
//    print("name 1 is $name1");
//    print("name 2 is $name2");
//    print("name 3 is $name3");
//  }
//  printCities("beijing", "shanghai", "chengdu");
//  print("");
//  printCountries("zhongguo", "meiguo", "yingguo");
//        8.函数参数 命名
//void findVolume(int length,int height,{int width}){ //{}
//  print("length is $length");
//  print("length is $height");
//  print("length is $width");
//}
//findVolume(10,20,width: 30);
//        9.函数参数 赋默认值
//  void findVolume(int length,int height,{int width=20}){ //{}默认值有值覆盖没值可不传
//    print("length is $length");
//    print("length is $height");
//    print("length is $width");
//  }
//  findVolume(10,20);
//      void 没有返回值

//}


//----------------------------异常捕获-----------------------------
/* try catch on finally
  1try:执行的代码，其中可能有异常。一旦发现异常，则立即跳到catch执行。否则不会执行catch里面的内容。
  2 on: 当你需要指定异常类型的时候用on
  3 catch: 除非try里面执行代码发生了异常，否则这里的代码不会执行。
  3 finally: 不管什么情况都会执行，包括try catch 里面用了return,可以理解为只要执行了try 或者catch ,就一定会执行
  4 实现自己的异常方法
  */
//void  main(){
////  int result = 12 ~/ 0;//返回大于0的整数值
////  print(result);
//    print('Case 1');
//    try {
//      int result = 12 ~/0;
//      print("result is $result");
//    } on IntegerDivisionByZeroException {
//      print("Cannot divide by Zero");
//    }
//
//    print('Case 2');
//    try{
//      int result = 12~/0;
//      print("result is $result");
//    } catch(e,s){
//      print("The exception throw is $e");
//      print("STACK TRACE \n $s");
//    }
//
//    print('Case 4');
//    try{
//      int result = 12~/0;
//      print("result is $result");
//    } catch(e){
//      print("The exception throw is $e");
//    } finally{
//      print("不管有没有异常，都会执行");
//    }
//
//    print('Case 5');
//    try{
//      depositMoney(200);
//    }catch (e){
//      print(e.DepositException());
//    }
//
//
//
//}
//class DepositException implements Exception {
//  String errorMessage(){
//    return "金额不能少于0元";
//  }
//}
//void depositMoney(int amount){
//    if(amount <0){
//      throw new DepositException();
//    }
//}

//---------------------------类---------------------------
//1.类的基础知识
/*void main(){
  var student1 = Student(10,'ssss');
//  student1.id=1;
//  student1.name="m stw1";
  print("${student1.id} and ${student1.name}");
  student1.study();
  student1.sleep();


  var student2 = Student(20,"wstw2");
//  student2.id=1;
//  student2.name="m stw2";
  print("${student2.id} and ${student2.name}");
  student2.study();
  student2.sleep();

  var student3 = Student.myCustomConstructor(30,"mstw3");
  print("${student3.id} and ${student3.name}");
}
//定义一个类
class Student {
  int id;
  String name;

  //构造函数
//  Student(){
//    print("这个就是构造函数，只要对象被实例，就会自动执行");
//  }
//3.构造函数参数
//  Student(int id,String name){
//    this.id=id;
//    this.name=name;
//  }
//  Student(int _id,String _name){ 不普遍使用
//    id=_id;
//    name=_name;
//  }
  Student(this.id,this.name);
  //4.自定义构造函数
//  Student.myCustomConstructor(){
//    print("hello custom constructor");
//  }

  Student.myCustomConstructor(this.id,this.name)

  void study(){
    print("${this.name} is new studing");
  }
  void sleep(){
    print("${this.name} is new ssleeping");
  }
}*/
//--------------------------------继承--------------------------------
//1。自定义setter和getter方法
void main(){
  //1 setter和 getter方法
//  var student = Student();
//  student.name="mstw";//调用了默认的setter方法
//  print(student.name);//调用 了默认的getter方法
//
//  student.setAge=32;//调用了自己的setter方法
//  print(student.getAge);//调用 了自己的getter方法

  //2.类的继承
  /*var dog = Dog();
  dog.name="hali";
  print(dog.name);
  dog.color="black";
  print(dog.color);
  dog.bark();
  dog.eat();//子类可以调用父类的属性和方法
  var cat = Cat();
  cat.age=1;
  print(cat.age);
  cat.color="black";
  print(cat.color);
  cat.meow();
  cat.eat();//子类可以调用父类的属性和方法
  //实例父类animal
  var animal= Animal();
  animal.color="brown";
  print(animal.color);
  animal.eat();*/

//3.重写父类方法和属性
  var dog= Dog();
  print(dog.color);
  dog.eat();

}
class Animal {
  String color="yellow";
  void eat(){
    print("animal eat");
  }

}
class Dog extends Animal{
  String color="red";
  String name;
  void bark(){
    print("bark");
  }
  void eat(){
    print("dog eat");
  }
}
class Cat extends Animal{
  int age;
  void meow(){
    print("meow");
  }
}


class Student {
  String name;
  int age;
//  void set setAge(int num){
//    this.age=num;
//  }
  void set setAge(int num) =>this.age=num;
//  int get getAge{
//    return this.age;
//  }
//  void get getAge =>this.age; //不需要return
}



