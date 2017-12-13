import UIKit
import MaterialComponents

class MDCViewController: UIViewController {
  let textField = MDCMultilineTextField()
  let textField2 = MDCMultilineTextField()
  let textView = UITextView()

  override func viewDidLoad() {
    super.viewDidLoad()

    textField.placeholder = "Text Field"
    textField.underline?.color = .clear
    textField.clearButtonMode = .never
    textField.expandsOnOverflow = false
    textField.backgroundColor = UIColor.red.withAlphaComponent(0.25)
    textField.textView?.backgroundColor = UIColor.blue.withAlphaComponent(0.25)
    view.addSubview(textField)

    textField2.placeholder = "Text Field 2"
    textField2.underline?.color = .clear
    textField2.clearButtonMode = .never
    textField2.expandsOnOverflow = true
    textField2.backgroundColor = UIColor.red.withAlphaComponent(0.25)
    textField2.textView?.backgroundColor = UIColor.blue.withAlphaComponent(0.25)
    view.addSubview(textField2)

    textView.backgroundColor = UIColor.red.withAlphaComponent(0.25)
    view.addSubview(textView)

    view.backgroundColor = .white
  }

  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()

    textField.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
    textField2.frame = CGRect(x: 100, y: textField.frame.maxY + 100, width: 200, height: 100)
    textView.frame = CGRect(x: 100, y: textField2.frame.maxY + 100, width: 200, height: 100)
  }
}
