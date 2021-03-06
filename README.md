[![Github Actions workflow](https://github.com/tichise/MaterialDesignUIComponents/actions/workflows/swift.yml/badge.svg)](https://github.com/tichise/MaterialDesignUIComponents/actions/workflows/swift.yml)


# MaterialDesignUIComponents

UI components library for Swift. Currently supports MaterialDesign.

## Sample

### ButtonStyle

ButtonStyleContained
```
struct ButtonStyleContained_Previews: PreviewProvider {
    static var previews: some View {
        Button("Button") {
        }.buttonStyle(ButtonStyleContained())
    }
}
```

<img width="120" alt="image" src="https://user-images.githubusercontent.com/43707/166133255-953a21a0-bc19-4fa0-91be-9fcfdfc5cbc7.png">

ButtonStyleOutlined
```
struct ButtonStyleOutlined_Previews: PreviewProvider {
    static var previews: some View {
        Button("Button") {
        }.buttonStyle(ButtonStyleOutlined(strokeColor: .black))
    }
}
```

<img width="121" alt="image" src="https://user-images.githubusercontent.com/43707/166129829-28882bf3-4d08-456d-b86e-df0314c6d48f.png">
 
 ### Modifiler

FillCard
```
struct FilledCard_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Text("text").padding(10)
        }.modifier(FilledCard(cornerRadius: 5, backgroundColor: .yellow))
    }
}
```

<img width="109" alt="image" src="https://user-images.githubusercontent.com/43707/166129874-03d65048-bd11-48cf-b72f-1b7b7c90fc7c.png">


ElevatedCard
```
struct ElevatedCard_Previews: PreviewProvider {
    static var previews: some View {
        HStack {
            Text("text").padding(10)
        }.modifier(ElevatedCard(cornerRadius: 5, shadowColor: .gray))
    }
}
```

<img width="85" alt="image" src="https://user-images.githubusercontent.com/43707/166129889-eccc3c41-4582-4564-9d2a-9c810055b21f.png">
