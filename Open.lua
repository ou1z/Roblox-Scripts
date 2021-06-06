return function(callback)
	local FileExplorer = Instance.new("ScreenGui")
	local Open = Instance.new("Frame")
	local Title = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local CurrentDirectory = Instance.new("Frame")
	local TextLabel_2 = Instance.new("TextLabel")
	local Refresh = Instance.new("ImageButton")
	local Bottom = Instance.new("Frame")
	local Open_2 = Instance.new("TextButton")
	local Cancel = Instance.new("TextButton")
	local Selected = Instance.new("TextLabel")
	local Frame = Instance.new("Frame")
	local UIGradient = Instance.new("UIGradient")
	local Explorer = Instance.new("ScrollingFrame")
	local Workspace = Instance.new("Frame")
	local FolderName = Instance.new("TextLabel")
	local FolderImage = Instance.new("ImageLabel")
	local Line = Instance.new("Frame")
	local List = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local Back = Instance.new("ImageButton")
	local Forward = Instance.new("ImageButton")
	local Templates = Instance.new("Folder")
	local FileTemplate = Instance.new("Frame")
	local FileName = Instance.new("TextLabel")
	local FileImage = Instance.new("ImageLabel")
	local FolderTemplate = Instance.new("Frame")
	local FolderName_2 = Instance.new("TextLabel")
	local FolderImage_2 = Instance.new("ImageLabel")

	FileExplorer.Name = "FileExplorer"
	FileExplorer.Parent = game.CoreGui
	FileExplorer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Open.Name = "Open"
	Open.Parent = FileExplorer
	Open.AnchorPoint = Vector2.new(0.5, 0.5)
	Open.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	Open.BorderSizePixel = 0
	Open.ClipsDescendants = true
	Open.Position = UDim2.new(0.5, 0, 0.5, 0)

	Title.Name = "Title"
	Title.Parent = Open
	Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(1, 0, 0.100000001, 0)

	TextLabel.Parent = Title
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Position = UDim2.new(0.0356589146, 0, 0.238805965, 0)
	TextLabel.Size = UDim2.new(0.336434096, 0, 0.477611929, 0)
	TextLabel.Font = Enum.Font.SourceSans
	TextLabel.Text = "Open File"
	TextLabel.TextColor3 = Color3.fromRGB(230, 230, 230)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	CurrentDirectory.Name = "CurrentDirectory"
	CurrentDirectory.Parent = Open
	CurrentDirectory.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	CurrentDirectory.BorderColor3 = Color3.fromRGB(83, 83, 83)
	CurrentDirectory.Position = UDim2.new(0.119379871, 0, 0.119402982, 0)
	CurrentDirectory.Size = UDim2.new(0.862015426, 0, 0.0776119381, 0)

	TextLabel_2.Parent = CurrentDirectory
	TextLabel_2.AnchorPoint = Vector2.new(0, 0.5)
	TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.BackgroundTransparency = 1.000
	TextLabel_2.Position = UDim2.new(0.0399999991, 0, 0.5, 0)
	TextLabel_2.Size = UDim2.new(0.875899374, 0, 0.5, 0)
	TextLabel_2.Font = Enum.Font.SourceSans
	TextLabel_2.Text = "Workspace"
	TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel_2.TextSize = 14.000
	TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

	Refresh.Name = "Refresh"
	Refresh.Parent = CurrentDirectory
	Refresh.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Refresh.BackgroundTransparency = 1.000
	Refresh.Position = UDim2.new(0.941999972, 0, 0.0900000036, 0)
	Refresh.Size = UDim2.new(0.0439999998, 0, 0.768999994, 0)
	Refresh.Image = "rbxassetid://6919268606"
	Refresh.ScaleType = Enum.ScaleType.Fit

	Bottom.Name = "Bottom"
	Bottom.Parent = Open
	Bottom.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
	Bottom.BorderSizePixel = 0
	Bottom.Position = UDim2.new(0, 0, 0.835820913, 0)
	Bottom.Size = UDim2.new(1, 0, 0.164179102, 0)

	Open_2.Name = "Open"
	Open_2.Parent = Bottom
	Open_2.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	Open_2.BorderColor3 = Color3.fromRGB(181, 181, 181)
	Open_2.Position = UDim2.new(0.689922452, 0, 0.290909111, 0)
	Open_2.Size = UDim2.new(0.13333334, 0, 0.418181807, 0)
	Open_2.Font = Enum.Font.SourceSans
	Open_2.Text = "Open"
	Open_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	Open_2.TextSize = 14.000

	Cancel.Name = "Cancel"
	Cancel.Parent = Bottom
	Cancel.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	Cancel.BorderColor3 = Color3.fromRGB(181, 181, 181)
	Cancel.Position = UDim2.new(0.840310037, 0, 0.290909111, 0)
	Cancel.Size = UDim2.new(0.13333334, 0, 0.418181807, 0)
	Cancel.Font = Enum.Font.SourceSans
	Cancel.Text = "Cancel"
	Cancel.TextColor3 = Color3.fromRGB(255, 255, 255)
	Cancel.TextSize = 14.000

	Selected.Name = "Selected"
	Selected.Parent = Bottom
	Selected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Selected.BackgroundTransparency = 1.000
	Selected.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Selected.Position = UDim2.new(0.0189999994, 0, 0.600000024, 0)
	Selected.Size = UDim2.new(0.626356602, 0, 0.272727281, 0)
	Selected.Font = Enum.Font.SourceSans
	Selected.Text = "1 File Selected"
	Selected.TextColor3 = Color3.fromRGB(179, 179, 179)
	Selected.TextScaled = true
	Selected.TextSize = 14.000
	Selected.TextWrapped = true
	Selected.TextXAlignment = Enum.TextXAlignment.Left

	Frame.Parent = Bottom
	Frame.BackgroundColor3 = Color3.fromRGB(115, 115, 115)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.0100000193, 0, 0.508999884, 0)
	Frame.Size = UDim2.new(0.634108543, 0, 0.0181818176, 0)

	UIGradient.Rotation = 90
	UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
	UIGradient.Parent = Frame

	Explorer.Name = "Explorer"
	Explorer.Parent = Open
	Explorer.Active = true
	Explorer.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Explorer.BorderSizePixel = 0
	Explorer.Position = UDim2.new(0.00310077518, 0, 0.268656731, 0)
	Explorer.Size = UDim2.new(0.164341092, 0, 0.567164183, 0)
	Explorer.BottomImage = "rbxassetid://6919302039"
	Explorer.MidImage = "rbxassetid://6919302039"
	Explorer.TopImage = "rbxassetid://6919302039"

	Workspace.Name = "Workspace"
	Workspace.Parent = Explorer
	Workspace.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	Workspace.BorderSizePixel = 0
	Workspace.Size = UDim2.new(1, 0, 0, 25)

	FolderName.Name = "FolderName"
	FolderName.Parent = Workspace
	FolderName.AnchorPoint = Vector2.new(0.5, 0.5)
	FolderName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FolderName.BackgroundTransparency = 1.000
	FolderName.Position = UDim2.new(0.569999993, 0, 0.5, 0)
	FolderName.Size = UDim2.new(0.648000002, 0, 0.600000024, 0)
	FolderName.Font = Enum.Font.SourceSans
	FolderName.Text = "workspace"
	FolderName.TextColor3 = Color3.fromRGB(255, 255, 255)
	FolderName.TextScaled = true
	FolderName.TextSize = 14.000
	FolderName.TextWrapped = true
	FolderName.TextXAlignment = Enum.TextXAlignment.Left

	FolderImage.Name = "FolderImage"
	FolderImage.Parent = Workspace
	FolderImage.AnchorPoint = Vector2.new(0, 0.5)
	FolderImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FolderImage.BackgroundTransparency = 1.000
	FolderImage.Position = UDim2.new(0.0370000005, 0, 0.5, 0)
	FolderImage.Size = UDim2.new(0.170113266, 0, 0.88499999, 0)
	FolderImage.Image = "rbxassetid://6919327844"
	FolderImage.ScaleType = Enum.ScaleType.Fit

	Line.Name = "Line"
	Line.Parent = Open
	Line.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	Line.BorderSizePixel = 0
	Line.Position = UDim2.new(0.0029999963, 0, 0.217910439, 0)
	Line.Size = UDim2.new(0.164341092, 0, 0.0507462695, 0)

	List.Name = "List"
	List.Parent = Open
	List.Active = true
	List.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	List.BorderSizePixel = 0
	List.Position = UDim2.new(0.16744186, 0, 0.217910454, 0)
	List.Size = UDim2.new(0.832558155, 0, 0.617910445, 0)
	List.BottomImage = "rbxassetid://6919302039"
	List.CanvasSize = UDim2.new(0, 0, 0, 0)
	List.MidImage = "rbxassetid://6919302039"
	List.TopImage = "rbxassetid://6919302039"

	UIListLayout.Parent = List
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	Back.Name = "Back"
	Back.Parent = Open
	Back.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Back.BackgroundTransparency = 1.000
	Back.Position = UDim2.new(0.0189999994, 0, 0.128000006, 0)
	Back.Size = UDim2.new(0.0340000018, 0, 0.0599999987, 0)
	Back.Image = "rbxassetid://6919246937"
	Back.ImageColor3 = Color3.fromRGB(140, 140, 140)
	Back.ScaleType = Enum.ScaleType.Fit

	Forward.Name = "Forward"
	Forward.Parent = Open
	Forward.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Forward.BackgroundTransparency = 1.000
	Forward.Position = UDim2.new(0.064000003, 0, 0.128000006, 0)
	Forward.Size = UDim2.new(0.0340000018, 0, 0.0599999987, 0)
	Forward.Image = "rbxassetid://6919256099"
	Forward.ImageColor3 = Color3.fromRGB(140, 140, 140)
	Forward.ScaleType = Enum.ScaleType.Fit

	Templates.Name = "Templates"
	Templates.Parent = FileExplorer

	FileTemplate.Name = "FileTemplate"
	FileTemplate.Parent = Templates
	FileTemplate.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	FileTemplate.BorderSizePixel = 0
	FileTemplate.Size = UDim2.new(1, 0, 0, 25)
	FileTemplate.Visible = false

	FileName.Name = "FileName"
	FileName.Parent = FileTemplate
	FileName.AnchorPoint = Vector2.new(0.5, 0.5)
	FileName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FileName.BackgroundTransparency = 1.000
	FileName.Position = UDim2.new(0.516759753, 0, 0.5, 0)
	FileName.Size = UDim2.new(0.865999997, 0, 0.699999988, 0)
	FileName.Font = Enum.Font.SourceSans
	FileName.Text = "file.lua"
	FileName.TextColor3 = Color3.fromRGB(255, 255, 255)
	FileName.TextScaled = true
	FileName.TextSize = 14.000
	FileName.TextWrapped = true
	FileName.TextXAlignment = Enum.TextXAlignment.Left

	FileImage.Name = "FileImage"
	FileImage.Parent = FileTemplate
	FileImage.AnchorPoint = Vector2.new(0, 0.5)
	FileImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FileImage.BackgroundTransparency = 1.000
	FileImage.Position = UDim2.new(0.0219999999, 0, 0.5, 0)
	FileImage.Size = UDim2.new(0.045996286, 0, 0.839999974, 0)
	FileImage.Image = "rbxassetid://6919336404"
	FileImage.ScaleType = Enum.ScaleType.Fit

	FolderTemplate.Name = "FolderTemplate"
	FolderTemplate.Parent = Templates
	FolderTemplate.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
	FolderTemplate.BorderSizePixel = 0
	FolderTemplate.Size = UDim2.new(1, 0, 0, 25)
	FolderTemplate.Visible = false

	FolderName_2.Name = "FolderName"
	FolderName_2.Parent = FolderTemplate
	FolderName_2.AnchorPoint = Vector2.new(0.5, 0.5)
	FolderName_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FolderName_2.BackgroundTransparency = 1.000
	FolderName_2.Position = UDim2.new(0.516759753, 0, 0.5, 0)
	FolderName_2.Size = UDim2.new(0.865999997, 0, 0.699999988, 0)
	FolderName_2.Font = Enum.Font.SourceSans
	FolderName_2.Text = "folder"
	FolderName_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	FolderName_2.TextScaled = true
	FolderName_2.TextSize = 14.000
	FolderName_2.TextWrapped = true
	FolderName_2.TextXAlignment = Enum.TextXAlignment.Left

	FolderImage_2.Name = "FolderImage"
	FolderImage_2.Parent = FolderTemplate
	FolderImage_2.AnchorPoint = Vector2.new(0, 0.5)
	FolderImage_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	FolderImage_2.BackgroundTransparency = 1.000
	FolderImage_2.Position = UDim2.new(0.0280000009, 0, 0.5, 0)
	FolderImage_2.Size = UDim2.new(0.0348231085, 0, 0.769999981, 0)
	FolderImage_2.Image = "rbxassetid://6919327844"
	FolderImage_2.ScaleType = Enum.ScaleType.Fit

	local function WLYDKPO_fake_script()
		local script = Instance.new('LocalScript', FileExplorer)

		script.Parent.Open:TweenSize(UDim2.new(0.49, 0,0.488, 0),'In','Linear',0.5,true)
	end
	coroutine.wrap(WLYDKPO_fake_script)()



	do
		listfiles = listfiles or function() return {} end
		isfile = isfile or function() return false end
		isfolder = isfolder or function() return false end	
	end


	local Open = FileExplorer.Open

	local CurrentDirectory = Open.CurrentDirectory -- Will show the current file directory path.
	local Bottom = Open.Bottom -- Incases the open (open the selected file), and cancel button
	local FileList = Open.List -- Where all of the files will be displayed

	local SelectedFiles = {}

	Bottom.Cancel.MouseButton1Click:Connect(function()
		Open:TweenSize(UDim2.new(0,0,0,0),'Out','Linear',0.1,true,function()
			FileExplorer:Destroy()
		end)
	end)

	function filetree(f)
		local files = listfiles(f or '/')
		local contents = {}
		for i,v in pairs(files) do
			if isfile(v) then
				contents[v] =  {
					Name = v,
					Type = 'File'
				}
			elseif isfolder(v) then
				contents[v] = {
					Name = v,
					Type = 'Folder',
					Contents = filetree(v)
				}
			end
		end
		return contents
	end

	local TemplateCache = {}

	local Directory = "/"
	local LastDirectory = "/"
	local NextDirectory = "/"

	function Refresh(f)
		for _, template in pairs(TemplateCache) do
			template:Destroy()
		end

		Directory = f and f or '/'
		SelectedFiles = {}
		Bottom.Selected.Text = '0 Files Selected'

		local files = filetree(f)
		for i,v in pairs(files) do
			--[[
				~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
				if v is a file then:
					v = {
						Name = <string> (file name),
						Type = "File" (file type)
					}
				else if v is a folder then:
					v = {
						Name = <string> (file name),
						Type = "Folder" (file type),
						Contents = <table> { ... }
					}
				~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
			]]

			local FileName = v.Name


			if f and isfolder(f) then
				local sp = FileName:split('\\')
				FileName = sp[#sp]
			end

			local template

			local function hover()
				if not table.find(SelectedFiles, FileName) then  
					game:GetService('TweenService'):Create(template, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(59, 59, 59)}):Play()		
				end
			end
			local function unhover(bool)
				if not table.find(SelectedFiles, v.Name) or bool then  
					game:GetService('TweenService'):Create(template, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(32, 32, 32)}):Play()				
				end
			end
			local function selectfile()
				if table.find(SelectedFiles, v.Name) then -- Unselect --	
					table.remove(SelectedFiles, table.find(SelectedFiles, FileExplorer))
					unhover(true)
				else -- Select --
					SelectedFiles = {}
					for i,v in pairs(TemplateCache) do
						if v.BackgroundColor3 ~= Color3.fromRGB(32, 32, 32) and v ~= template then
							game:GetService('TweenService'):Create(v, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(32, 32, 32)}):Play()				
						end					
					end

					table.insert(SelectedFiles, v.Name)
					game:GetService('TweenService'):Create(template, TweenInfo.new(0.1), {BackgroundColor3 = Color3.fromRGB(107, 107, 107)}):Play()
				end
				local Grammar = '1 File Selected'
				local Amount = #SelectedFiles

				if Amount > 1 then
					Grammar = string.format('%s Files Selected', Amount)
				elseif Amount <= 0 then
					Grammar = 'No Files Selected'
				end

				Bottom.Selected.Text = Grammar
			end

			if v.Type == "Folder" then
				template = FileExplorer.Templates.FolderTemplate:Clone()
				template.Name = v.Name
				template.FolderName.Text = FileName
				template.Parent = FileList
				template.Visible = true
				table.insert(TemplateCache,template)
			elseif v.Type == "File" then
				template = FileExplorer.Templates.FileTemplate:Clone()
				template.Name = v.Name
				template.FileName.Text = FileName
				template.Parent  = FileList
				template.Visible = true
				table.insert(TemplateCache,template)
			end

			template.MouseEnter:Connect(function()
				hover(false)
			end)
			template.MouseLeave:Connect(function()
				unhover(false)
			end)
			template.InputBegan:Connect(function(key,gpe)
				if key.UserInputType == Enum.UserInputType.MouseButton1 then
					selectfile()
				end	
			end)

		end

		FileList.CanvasSize = UDim2.new(0, 0, 0, 50 * (#FileList:GetChildren() - 1))
		CurrentDirectory.TextLabel.Text = f and 'Workspace'..f or 'Workspace'
	end

	Bottom.Open.MouseButton1Click:Connect(function()
		local Selected = SelectedFiles[1]
		if not Selected then return end

		if isfolder(Selected) then
			LastDirectory = Directory
			Directory = Selected
			Refresh(Selected)
		elseif isfile(Selected) then
			pcall(callback, readfile(Selected))
			Open:TweenSize(UDim2.new(0,0,0,0),'Out','Linear',0.1,true,function()
				FileExplorer:Destroy()
			end)
		end
	end)

	Open.Back.MouseButton1Click:Connect(function()
		NextDirectory = Directory
		Refresh(LastDirectory)
	end)
	Open.Forward.MouseButton1Click:Connect(function()
		print(NextDirectory)
		Refresh(NextDirectory)
	end)


	CurrentDirectory.Refresh.MouseButton1Click:Connect(Refresh)
	Refresh()
end
