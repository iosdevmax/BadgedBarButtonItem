# BadgedBarButtonItem

UIBarButtonItem with a customizable badge for iOS applications


#### Instructions to use:
1. Add BadgedBarButtonItem class to your project

2. Create a new object with your image:

```
    let btn = BadgedButtonItem(with: UIImage(named: "your_image"))
```

3. Add the button to the navigation bar

```
    self.navigationItem.rightBarButtonItem = btn
```

4. Set the badge with a value

```
    btn.setBadge(with: 1)
```

5. Add an action to the button

```
    btn.tapAction = {
    // do something
        
    }
```
