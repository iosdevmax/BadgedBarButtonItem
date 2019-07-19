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

4. Customise badge appearance

 - Set a tint color ```btn.badgeTintColor = .blue```
 - Set a text color ```btn.badgeTextColor = .yellow```
 - Set badge position (left or right) ```btn.position = .left```
 - Add a border to the badge ```btn.hasBorder = true```
 - Set badge border color ```btn.borderColor = .red```
 - Set bagde size ```btn.badgeSize = .medium```
 - Set badge animation ```btn.badgeAnimation = true```
 
5. Set the badge with a value 

```
    btn.setBadge(with: 1)
```

6. Add an action to the button

```
    btn.tapAction = {
    // do something
        
    }
```
