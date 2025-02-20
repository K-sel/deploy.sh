# 🚀 Automated Deployment Script  

This repository allows you to automate the build and deployment of a **Node.js** project by running a single command, instead of manually typing `npm run build`, `git add .`, `git commit -m`, and `git push` for every change.  

## 📌 Installation  

### 1. Create a "scripts" folder **at the root of your VS Code project** and navigate into it  

```bash
mkdir scripts
cd scripts
```

### 2. Create a `deploy.sh` file in your scripts folder  

```bash
touch deploy.sh
```

### 3. Copy and paste the contents of `deploy.sh` into your newly created `deploy.sh` file  

### 4. Make the script executable (while still inside the scripts folder)  

```bash
chmod +x deploy.sh
```

### 5. Add the script to `package.json`  

Open your `package.json` file and add the following line in the `"scripts"` section:  

```json
  "deploy": "./scripts/deploy.sh",
```

## 🚀 Usage  

Once everything is installed and configured, you can deploy your project with a single command:  

```bash
npm run deploy -- "Your commit message"
```

### 🛠 How the automation works:  

1. **Build the project**: `npm run build`  
2. **Add modified files**: `git add .`  
3. **Commit changes** with your custom message: `git commit -m "Your message"`  
4. **Push changes** to the remote repository: `git push`  

## ✅ Requirements  

- Node.js installed  
- npm configured  
- A Git repository initialized and set up  

## 🎯 Goal  

This script helps you **save time** by automating deployment steps, which is especially useful during exams or quick project deliveries.  

## 📞 Support  

If you have any questions or suggestions, feel free to open an issue on the GitHub repository.  
