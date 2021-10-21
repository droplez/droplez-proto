# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [common/common_v1.proto](#common/common_v1.proto)
    - [EmptyMessage](#common.EmptyMessage)
    - [Paging](#common.Paging)
  
- [studio/projects/projects_v1.proto](#studio/projects/projects_v1.proto)
    - [ListOptions](#projects.ListOptions)
    - [ProjectId](#projects.ProjectId)
    - [ProjectInfo](#projects.ProjectInfo)
    - [ProjectMeta](#projects.ProjectMeta)
  
    - [DAW](#projects.DAW)
  
    - [Projects](#projects.Projects)
  
- [studio/versions/versions_v1.proto](#studio/versions/versions_v1.proto)
    - [ListOptions](#versions.ListOptions)
    - [VersionId](#versions.VersionId)
    - [VersionInfo](#versions.VersionInfo)
    - [VersionMeta](#versions.VersionMeta)
  
    - [Versions](#versions.Versions)
  
- [uploader/uploader_v1.proto](#uploader/uploader_v1.proto)
    - [Chunk](#uploader.Chunk)
    - [DownloadableLink](#uploader.DownloadableLink)
    - [Metadata](#uploader.Metadata)
    - [UploadedFileData](#uploader.UploadedFileData)
  
    - [Metadata.ContentType](#uploader.Metadata.ContentType)
  
    - [Uploader](#uploader.Uploader)
  
- [Scalar Value Types](#scalar-value-types)



<a name="common/common_v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## common/common_v1.proto
This file has messages for reusable common messages


<a name="common.EmptyMessage"></a>

### EmptyMessage
protolint:disable:next INDENT






<a name="common.Paging"></a>

### Paging
Represents a pagination message


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| page | [int32](#int32) |  | Page number or offset |
| count | [int32](#int32) |  | Units count or limit |





 

 

 

 



<a name="studio/projects/projects_v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## studio/projects/projects_v1.proto
This file has messages for describing droplez-projects service


<a name="projects.ListOptions"></a>

### ListOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| paging | [common.Paging](#common.Paging) |  |  |






<a name="projects.ProjectId"></a>

### ProjectId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="projects.ProjectInfo"></a>

### ProjectInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [ProjectId](#projects.ProjectId) |  |  |
| metadata | [ProjectMeta](#projects.ProjectMeta) |  |  |






<a name="projects.ProjectMeta"></a>

### ProjectMeta



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| daw | [DAW](#projects.DAW) |  |  |
| description | [string](#string) |  |  |
| public | [bool](#bool) |  |  |
| bpm | [int32](#int32) |  |  |
| key | [string](#string) |  |  |
| genre | [string](#string) |  |  |
| template | [bool](#bool) |  |  |





 


<a name="projects.DAW"></a>

### DAW


| Name | Number | Description |
| ---- | ------ | ----------- |
| DAW_UNSPECIFIED | 0 |  |
| DAW_LOGIC_PRO | 1 |  |
| DAW_ABLETON | 2 |  |
| DAW_GARAGEBAND | 3 |  |


 

 


<a name="projects.Projects"></a>

### Projects


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Create | [ProjectMeta](#projects.ProjectMeta) | [ProjectInfo](#projects.ProjectInfo) |  |
| Update | [ProjectInfo](#projects.ProjectInfo) | [ProjectInfo](#projects.ProjectInfo) |  |
| Get | [ProjectId](#projects.ProjectId) | [ProjectInfo](#projects.ProjectInfo) |  |
| List | [ListOptions](#projects.ListOptions) | [ProjectInfo](#projects.ProjectInfo) stream |  |
| Delete | [ProjectInfo](#projects.ProjectInfo) | [.common.EmptyMessage](#common.EmptyMessage) |  |

 



<a name="studio/versions/versions_v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## studio/versions/versions_v1.proto
This file has messages for describing droplez-projects service


<a name="versions.ListOptions"></a>

### ListOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| paging | [common.Paging](#common.Paging) |  |  |






<a name="versions.VersionId"></a>

### VersionId



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  |  |






<a name="versions.VersionInfo"></a>

### VersionInfo



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [VersionId](#versions.VersionId) |  |  |
| metadata | [VersionMeta](#versions.VersionMeta) |  |  |






<a name="versions.VersionMeta"></a>

### VersionMeta



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [int32](#int32) |  |  |
| project_id | [string](#string) |  |  |
| object_name | [string](#string) |  |  |
| message | [string](#string) |  |  |
| uploaded_at | [google.protobuf.Timestamp](#google.protobuf.Timestamp) |  |  |





 

 

 


<a name="versions.Versions"></a>

### Versions


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Get | [VersionId](#versions.VersionId) | [VersionInfo](#versions.VersionInfo) |  |
| List | [ListOptions](#versions.ListOptions) | [VersionInfo](#versions.VersionInfo) stream |  |
| Create | [VersionMeta](#versions.VersionMeta) | [VersionInfo](#versions.VersionInfo) |  |
| Update | [VersionInfo](#versions.VersionInfo) | [VersionInfo](#versions.VersionInfo) |  |
| Delete | [VersionInfo](#versions.VersionInfo) | [.common.EmptyMessage](#common.EmptyMessage) |  |

 



<a name="uploader/uploader_v1.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## uploader/uploader_v1.proto
This file has messages for describing droplez-uploader service


<a name="uploader.Chunk"></a>

### Chunk



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [bytes](#bytes) |  |  |
| file_metadata | [Metadata](#uploader.Metadata) |  |  |






<a name="uploader.DownloadableLink"></a>

### DownloadableLink



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| url | [string](#string) |  |  |






<a name="uploader.Metadata"></a>

### Metadata



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content_type | [Metadata.ContentType](#uploader.Metadata.ContentType) |  |  |
| local_name | [string](#string) |  |  |
| file_size | [int64](#int64) |  |  |
| user_id | [string](#string) |  |  |






<a name="uploader.UploadedFileData"></a>

### UploadedFileData



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| object | [string](#string) |  |  |





 


<a name="uploader.Metadata.ContentType"></a>

### Metadata.ContentType


| Name | Number | Description |
| ---- | ------ | ----------- |
| CONTENT_TYPE_UNSPECIFIED | 0 |  |
| CONTENT_TYPE_ARCHIVE | 1 |  |
| CONTENT_TYPE_PICTURE | 2 |  |
| CONTENT_TYPE_AUDIO | 3 |  |


 

 


<a name="uploader.Uploader"></a>

### Uploader


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| Upload | [Chunk](#uploader.Chunk) stream | [UploadedFileData](#uploader.UploadedFileData) |  |
| GetDownloadableLink | [UploadedFileData](#uploader.UploadedFileData) | [DownloadableLink](#uploader.DownloadableLink) |  |

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

