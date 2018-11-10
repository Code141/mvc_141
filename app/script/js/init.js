function	prompter_display(prompter_data)
{
	var prompter_element = document.querySelector("#prompter");
	
	if (prompter_data.fail !== "")
	{
		prompter_element_fail = document.createElement("div");
		prompter_element_fail.className = "fail";
		prompter_element_fail.innerHTML = prompter_data.fail;
		prompter_element.appendChild(prompter_element_fail);
	}

	if (prompter_data.success !== "")
	{
		prompter_element_fail = document.createElement("div");
		prompter_element_fail.className = "success";
		prompter_element_fail.innerHTML = prompter_data.success;
		prompter_element.appendChild(prompter_element_fail);
	}
}

luncher_stack = new Array();

function luncher_add(fnc)
{
	luncher_stack[luncher_stack.length] = fnc;
}

function	init()
{
	for (i = 0; i < luncher_stack.length; i++)
		luncher_stack[i]();
}


