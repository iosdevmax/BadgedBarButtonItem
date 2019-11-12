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
<img src="https://raw.githubusercontent.com/Syngmaster/BadgedBarButtonItem/master/Screenshots/screenshot1.png" width="640px" />

4. Customise badge appearance

 - Set a tint color ```btn.badgeTintColor = .blue```
 <img src="https://raw.githubusercontent.com/Syngmaster/BadgedBarButtonItem/master/Screenshots/screenshot2.png" width="640px" />
 
 - Set a text color ```btn.badgeTextColor = .green```
  <img src="https://raw.githubusercontent.com/Syngmaster/BadgedBarButtonItem/master/Screenshots/screenshot3.png" width="640px" />
  
 - Set badge position (left or right) ```btn.position = .left```
  <img src="https://raw.githubusercontent.com/Syngmaster/BadgedBarButtonItem/master/Screenshots/screenshot4.png" width="640px" />

 - Add a border to the badge ```btn.hasBorder = true```
  <img src="https://raw.githubusercontent.com/Syngmaster/BadgedBarButtonItem/master/Screenshots/screenshot5.png" width="640px" />
  
 - Remove a border from the badge ```btn.hasBorder = false```
  <img src="https://raw.githubusercontent.com/Syngmaster/BadgedBarButtonItem/master/Screenshots/screenshot6.png" width="640px" />

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
