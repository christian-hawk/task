# DefaultAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tasksGet**](DefaultAPI.md#tasksget) | **GET** /tasks | Lista todas as tarefas
[**tasksPost**](DefaultAPI.md#taskspost) | **POST** /tasks | Cria uma nova tarefa
[**tasksTaskIdDelete**](DefaultAPI.md#taskstaskiddelete) | **DELETE** /tasks/{taskId} | Deleta uma tarefa específica
[**tasksTaskIdGet**](DefaultAPI.md#taskstaskidget) | **GET** /tasks/{taskId} | Recupera detalhes de uma tarefa específica
[**tasksTaskIdPut**](DefaultAPI.md#taskstaskidput) | **PUT** /tasks/{taskId} | Atualiza uma tarefa específica


# **tasksGet**
```swift
    open class func tasksGet(completion: @escaping (_ data: [Task]?, _ error: Error?) -> Void)
```

Lista todas as tarefas

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Lista todas as tarefas
DefaultAPI.tasksGet() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[Task]**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksPost**
```swift
    open class func tasksPost(taskInput: TaskInput? = nil, completion: @escaping (_ data: Task?, _ error: Error?) -> Void)
```

Cria uma nova tarefa

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let taskInput = TaskInput(description: "description_example", date: Date(), feedback: "feedback_example") // TaskInput |  (optional)

// Cria uma nova tarefa
DefaultAPI.tasksPost(taskInput: taskInput) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskInput** | [**TaskInput**](TaskInput.md) |  | [optional] 

### Return type

[**Task**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIdDelete**
```swift
    open class func tasksTaskIdDelete(taskId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deleta uma tarefa específica

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let taskId = "taskId_example" // String | ID da tarefa

// Deleta uma tarefa específica
DefaultAPI.tasksTaskIdDelete(taskId: taskId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String** | ID da tarefa | 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIdGet**
```swift
    open class func tasksTaskIdGet(taskId: String, completion: @escaping (_ data: Task?, _ error: Error?) -> Void)
```

Recupera detalhes de uma tarefa específica

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let taskId = "taskId_example" // String | ID da tarefa

// Recupera detalhes de uma tarefa específica
DefaultAPI.tasksTaskIdGet(taskId: taskId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String** | ID da tarefa | 

### Return type

[**Task**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tasksTaskIdPut**
```swift
    open class func tasksTaskIdPut(taskId: String, taskInput: TaskInput? = nil, completion: @escaping (_ data: Task?, _ error: Error?) -> Void)
```

Atualiza uma tarefa específica

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let taskId = "taskId_example" // String | ID da tarefa
let taskInput = TaskInput(description: "description_example", date: Date(), feedback: "feedback_example") // TaskInput |  (optional)

// Atualiza uma tarefa específica
DefaultAPI.tasksTaskIdPut(taskId: taskId, taskInput: taskInput) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String** | ID da tarefa | 
 **taskInput** | [**TaskInput**](TaskInput.md) |  | [optional] 

### Return type

[**Task**](Task.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

