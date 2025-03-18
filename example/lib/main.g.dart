// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

$AcceptConsentResponse _$$AcceptConsentResponseFromJson(
        Map<String, dynamic> json) =>
    $AcceptConsentResponse(
      data: json['data'] as String?,
      error: json['error'] == null
          ? null
          : $ErrorResponse.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AcceptConsentResponseToJson(
        $AcceptConsentResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

$Answer _$$AnswerFromJson(Map<String, dynamic> json) => $Answer(
      examId: (json['exam_id'] as num).toInt(),
      answerAudio: json['answer_audio'] as String?,
      answerChoice: json['answer_choice'] as String?,
      answerText: json['answer_text'] as String?,
    );

Map<String, dynamic> _$$AnswerToJson($Answer instance) => <String, dynamic>{
      'exam_id': instance.examId,
      'answer_audio': instance.answerAudio,
      'answer_choice': instance.answerChoice,
      'answer_text': instance.answerText,
    };

$CloseSessionBody _$$CloseSessionBodyFromJson(Map<String, dynamic> json) =>
    $CloseSessionBody(
      recordings: (json['recordings'] as List<dynamic>)
          .map((e) => $RecordedFile.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CloseSessionBodyToJson($CloseSessionBody instance) =>
    <String, dynamic>{
      'recordings': instance.recordings,
    };

$CloseSessionResponse _$$CloseSessionResponseFromJson(
        Map<String, dynamic> json) =>
    $CloseSessionResponse(
      data: json['data'] as String?,
      error: json['error'] == null
          ? null
          : $ErrorResponse.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CloseSessionResponseToJson(
        $CloseSessionResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

$CreateAssetBody _$$CreateAssetBodyFromJson(Map<String, dynamic> json) =>
    $CreateAssetBody(
      file: const FileConverter().fromJson(json['file'] as String),
    );

Map<String, dynamic> _$$CreateAssetBodyToJson($CreateAssetBody instance) =>
    <String, dynamic>{
      'file': const FileConverter().toJson(instance.file),
    };

$CreateAssetResponse _$$CreateAssetResponseFromJson(
        Map<String, dynamic> json) =>
    $CreateAssetResponse(
      data: json['data'] == null
          ? null
          : $Asset.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : $ErrorResponse.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateAssetResponseToJson(
        $CreateAssetResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

$CreateSessionBody _$$CreateSessionBodyFromJson(Map<String, dynamic> json) =>
    $CreateSessionBody(
      photo: json['photo'] as String,
      isPractice: json['is_practice'] as bool,
      group: $enumDecode(_$$SessionGroupEnumMap, json['group']),
      type: $enumDecode(_$$SessionTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$CreateSessionBodyToJson($CreateSessionBody instance) =>
    <String, dynamic>{
      'photo': instance.photo,
      'is_practice': instance.isPractice,
      'group': _$$SessionGroupEnumMap[instance.group]!,
      'type': _$$SessionTypeEnumMap[instance.type]!,
    };

const _$$SessionGroupEnumMap = {
  $SessionGroup.english: 'ENGLISH',
  $SessionGroup.digital: 'DIGITAL',
};

const _$$SessionTypeEnumMap = {
  $SessionType.core: 'CORE',
  $SessionType.speaking: 'SPEAKING',
  $SessionType.writing: 'WRITING',
};

$CreateSessionResponse _$$CreateSessionResponseFromJson(
        Map<String, dynamic> json) =>
    $CreateSessionResponse(
      data: json['data'] == null
          ? null
          : $Session.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : $ErrorResponse.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateSessionResponseToJson(
        $CreateSessionResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

$GetUserResponse _$$GetUserResponseFromJson(Map<String, dynamic> json) =>
    $GetUserResponse(
      data: json['data'] == null
          ? null
          : $UserInfo.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : $ErrorResponse.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GetUserResponseToJson($GetUserResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

$ListSessionResponse _$$ListSessionResponseFromJson(
        Map<String, dynamic> json) =>
    $ListSessionResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => $Session.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] == null
          ? null
          : $ErrorResponse.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ListSessionResponseToJson(
        $ListSessionResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

$QuerySessionResponse _$$QuerySessionResponseFromJson(
        Map<String, dynamic> json) =>
    $QuerySessionResponse(
      data: json['data'] == null
          ? null
          : $QuerySessionData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : $ErrorResponse.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuerySessionResponseToJson(
        $QuerySessionResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

$RecordedFile _$$RecordedFileFromJson(Map<String, dynamic> json) =>
    $RecordedFile(
      assetId: json['asset_id'] as String,
      recordedAt:
          const DateTimeConverter().fromJson(json['recorded_at'] as String),
    );

Map<String, dynamic> _$$RecordedFileToJson($RecordedFile instance) =>
    <String, dynamic>{
      'asset_id': instance.assetId,
      'recorded_at': const DateTimeConverter().toJson(instance.recordedAt),
    };

$SignInBody _$$SignInBodyFromJson(Map<String, dynamic> json) => $SignInBody(
      username: json['username'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SignInBodyToJson($SignInBody instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };

$SignInResponse _$$SignInResponseFromJson(Map<String, dynamic> json) =>
    $SignInResponse(
      data: json['data'] == null
          ? null
          : $AuthInfo.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] == null
          ? null
          : $ErrorResponse.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignInResponseToJson($SignInResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

$SubmitSessionBody _$$SubmitSessionBodyFromJson(Map<String, dynamic> json) =>
    $SubmitSessionBody(
      answers: (json['answers'] as List<dynamic>)
          .map((e) => $Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubmitSessionBodyToJson($SubmitSessionBody instance) =>
    <String, dynamic>{
      'answers': instance.answers,
    };

$SubmitSessionResponse _$$SubmitSessionResponseFromJson(
        Map<String, dynamic> json) =>
    $SubmitSessionResponse(
      data: json['data'] as String?,
      error: json['error'] == null
          ? null
          : $ErrorResponse.fromJson(json['error'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SubmitSessionResponseToJson(
        $SubmitSessionResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
    };

$Asset _$$AssetFromJson(Map<String, dynamic> json) => $Asset(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$AssetToJson($Asset instance) => <String, dynamic>{
      'id': instance.id,
    };

$AuthInfo _$$AuthInfoFromJson(Map<String, dynamic> json) => $AuthInfo(
      token: json['token'] as String,
      userInfo: $UserInfo.fromJson(json['user_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthInfoToJson($AuthInfo instance) => <String, dynamic>{
      'token': instance.token,
      'user_info': instance.userInfo,
    };

$ErrorResponse _$$ErrorResponseFromJson(Map<String, dynamic> json) =>
    $ErrorResponse(
      code: json['code'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ErrorResponseToJson($ErrorResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };

$QuerySessionData _$$QuerySessionDataFromJson(Map<String, dynamic> json) =>
    $QuerySessionData(
      results: (json['results'] as List<dynamic>)
          .map((e) => $Exam.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuerySessionDataToJson($QuerySessionData instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

$Session _$$SessionFromJson(Map<String, dynamic> json) => $Session(
      id: json['id'] as String,
      status: $enumDecode(_$$SessionStatusEnumMap, json['status']),
      group: $enumDecode(_$$SessionGroupEnumMap, json['group']),
      type: $enumDecode(_$$SessionTypeEnumMap, json['type']),
      quota: (json['quota'] as num).toInt(),
    );

Map<String, dynamic> _$$SessionToJson($Session instance) => <String, dynamic>{
      'id': instance.id,
      'status': _$$SessionStatusEnumMap[instance.status]!,
      'group': _$$SessionGroupEnumMap[instance.group]!,
      'type': _$$SessionTypeEnumMap[instance.type]!,
      'quota': instance.quota,
    };

const _$$SessionStatusEnumMap = {
  $SessionStatus.opened: 'OPENED',
  $SessionStatus.closed: 'CLOSED',
};

$UserInfo _$$UserInfoFromJson(Map<String, dynamic> json) => $UserInfo(
      userId: (json['user_id'] as num).toInt(),
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      school: json['school'] as String?,
      district: json['district'] as String?,
      province: json['province'] as String?,
      consentAccepted: json['consent_accepted'] as bool,
    );

Map<String, dynamic> _$$UserInfoToJson($UserInfo instance) => <String, dynamic>{
      'user_id': instance.userId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'school': instance.school,
      'district': instance.district,
      'province': instance.province,
      'consent_accepted': instance.consentAccepted,
    };

$Exam _$$ExamFromJson(Map<String, dynamic> json) => $Exam(
      id: (json['id'] as num).toInt(),
      slug: json['slug'] as String,
      duration: (json['duration'] as num).toInt(),
      group: json['group'] as String,
      type: $enumDecode(_$$ExamTypeEnumMap, json['type']),
      questionTitle: json['question_title'] as String?,
      questionText: json['question_text'] as String?,
      questionImage: json['question_image'] as String?,
      questionDialogue1Speaker: json['question_dialogue1_speaker'] as String,
      questionDialogue1Text: json['question_dialogue1_text'] as String,
      questionDialogue2Speaker: json['question_dialogue2_speaker'] as String,
      questionDialogue2Text: json['question_dialogue2_text'] as String,
      questionDialogue3Speaker: json['question_dialogue3_speaker'] as String,
      questionDialogue3Text: json['question_dialogue3_text'] as String,
      questionAudio: json['question_audio'] as String?,
      questionVideo: json['question_video'] as String?,
      answerTitle: json['answer_title'] as String?,
      answerDescription: json['answer_description'] as String?,
      answerOption1Text: json['answer_option1_text'] as String,
      answerOption2Text: json['answer_option2_text'] as String,
      answerOption3Text: json['answer_option3_text'] as String,
      answerAudio: json['answer_audio'] as String?,
      answerChoice: json['answer_choice'] as String?,
      answerText: json['answer_text'] as String?,
      maxPlayingTime: (json['max_playing_time'] as num?)?.toInt(),
      maxSpeakingTime: (json['max_speaking_time'] as num?)?.toInt(),
      minSpeakingDuration: (json['min_speaking_duration'] as num?)?.toInt(),
      maxSpeakingDuration: (json['max_speaking_duration'] as num?)?.toInt(),
      minWords: (json['min_words'] as num?)?.toInt(),
      maxWords: (json['max_words'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ExamToJson($Exam instance) => <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'duration': instance.duration,
      'group': instance.group,
      'type': _$$ExamTypeEnumMap[instance.type]!,
      'question_title': instance.questionTitle,
      'question_text': instance.questionText,
      'question_image': instance.questionImage,
      'question_dialogue1_speaker': instance.questionDialogue1Speaker,
      'question_dialogue1_text': instance.questionDialogue1Text,
      'question_dialogue2_speaker': instance.questionDialogue2Speaker,
      'question_dialogue2_text': instance.questionDialogue2Text,
      'question_dialogue3_speaker': instance.questionDialogue3Speaker,
      'question_dialogue3_text': instance.questionDialogue3Text,
      'question_audio': instance.questionAudio,
      'question_video': instance.questionVideo,
      'answer_title': instance.answerTitle,
      'answer_description': instance.answerDescription,
      'answer_option1_text': instance.answerOption1Text,
      'answer_option2_text': instance.answerOption2Text,
      'answer_option3_text': instance.answerOption3Text,
      'answer_audio': instance.answerAudio,
      'answer_choice': instance.answerChoice,
      'answer_text': instance.answerText,
      'max_playing_time': instance.maxPlayingTime,
      'max_speaking_time': instance.maxSpeakingTime,
      'min_speaking_duration': instance.minSpeakingDuration,
      'max_speaking_duration': instance.maxSpeakingDuration,
      'min_words': instance.minWords,
      'max_words': instance.maxWords,
    };

const _$$ExamTypeEnumMap = {
  $ExamType.listening: 'LISTENING',
  $ExamType.vocabulary: 'VOCABULARY',
  $ExamType.speaking: 'SPEAKING',
  $ExamType.grammar: 'GRAMMAR',
  $ExamType.reading: 'READING',
  $ExamType.writing: 'WRITING',
};
