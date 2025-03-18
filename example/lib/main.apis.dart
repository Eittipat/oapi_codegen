// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// RepositoryGenerator
// **************************************************************************

part of 'main.dart';

@serializable
class $AcceptConsentResponse extends Equatable {
  final String? data;
  final $ErrorResponse? error;
  const $AcceptConsentResponse({
    required this.data,
    this.error,
  });

  factory $AcceptConsentResponse.fromJson(Map<String, dynamic> json) =>
      _$$AcceptConsentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$$AcceptConsentResponseToJson(this);

  @override
  List<Object?> get props => [
        data,
        error,
      ];

  $AcceptConsentResponse copyWith({
    String? Function()? data,
    $ErrorResponse? Function()? error,
  }) {
    return $AcceptConsentResponse(
      data: data != null ? data() : this.data,
      error: error != null ? error() : this.error,
    );
  }
}

@serializable
class $Answer extends Equatable {
  final int examId;
  final String? answerAudio;
  final String? answerChoice;
  final String? answerText;
  const $Answer({
    required this.examId,
    required this.answerAudio,
    required this.answerChoice,
    required this.answerText,
  });

  factory $Answer.fromJson(Map<String, dynamic> json) =>
      _$$AnswerFromJson(json);

  Map<String, dynamic> toJson() => _$$AnswerToJson(this);

  @override
  List<Object?> get props => [
        examId,
        answerAudio,
        answerChoice,
        answerText,
      ];

  $Answer copyWith({
    int Function()? examId,
    String? Function()? answerAudio,
    String? Function()? answerChoice,
    String? Function()? answerText,
  }) {
    return $Answer(
      examId: examId != null ? examId() : this.examId,
      answerAudio: answerAudio != null ? answerAudio() : this.answerAudio,
      answerChoice: answerChoice != null ? answerChoice() : this.answerChoice,
      answerText: answerText != null ? answerText() : this.answerText,
    );
  }
}

@serializable
class $CloseSessionBody extends Equatable {
  final List<$RecordedFile> recordings;
  const $CloseSessionBody({
    required this.recordings,
  });

  factory $CloseSessionBody.fromJson(Map<String, dynamic> json) =>
      _$$CloseSessionBodyFromJson(json);

  Map<String, dynamic> toJson() => _$$CloseSessionBodyToJson(this);

  @override
  List<Object?> get props => [
        recordings,
      ];

  $CloseSessionBody copyWith({
    List<$RecordedFile> Function()? recordings,
  }) {
    return $CloseSessionBody(
      recordings: recordings != null ? recordings() : this.recordings,
    );
  }
}

@serializable
class $CloseSessionResponse extends Equatable {
  final String? data;
  final $ErrorResponse? error;
  const $CloseSessionResponse({
    required this.data,
    this.error,
  });

  factory $CloseSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$$CloseSessionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$$CloseSessionResponseToJson(this);

  @override
  List<Object?> get props => [
        data,
        error,
      ];

  $CloseSessionResponse copyWith({
    String? Function()? data,
    $ErrorResponse? Function()? error,
  }) {
    return $CloseSessionResponse(
      data: data != null ? data() : this.data,
      error: error != null ? error() : this.error,
    );
  }
}

@serializable
class $CreateAssetBody extends Equatable {
  final File file;
  const $CreateAssetBody({
    required this.file,
  });

  factory $CreateAssetBody.fromJson(Map<String, dynamic> json) =>
      _$$CreateAssetBodyFromJson(json);

  Map<String, dynamic> toJson() => _$$CreateAssetBodyToJson(this);

  @override
  List<Object?> get props => [
        file,
      ];

  $CreateAssetBody copyWith({
    File Function()? file,
  }) {
    return $CreateAssetBody(
      file: file != null ? file() : this.file,
    );
  }
}

@serializable
class $CreateAssetResponse extends Equatable {
  final $Asset? data;
  final $ErrorResponse? error;
  const $CreateAssetResponse({
    required this.data,
    this.error,
  });

  factory $CreateAssetResponse.fromJson(Map<String, dynamic> json) =>
      _$$CreateAssetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$$CreateAssetResponseToJson(this);

  @override
  List<Object?> get props => [
        data,
        error,
      ];

  $CreateAssetResponse copyWith({
    $Asset? Function()? data,
    $ErrorResponse? Function()? error,
  }) {
    return $CreateAssetResponse(
      data: data != null ? data() : this.data,
      error: error != null ? error() : this.error,
    );
  }
}

@serializable
class $CreateSessionBody extends Equatable {
  final String photo;
  final bool isPractice;
  final $SessionGroup group;
  final $SessionType type;
  const $CreateSessionBody({
    required this.photo,
    required this.isPractice,
    required this.group,
    required this.type,
  });

  factory $CreateSessionBody.fromJson(Map<String, dynamic> json) =>
      _$$CreateSessionBodyFromJson(json);

  Map<String, dynamic> toJson() => _$$CreateSessionBodyToJson(this);

  @override
  List<Object?> get props => [
        photo,
        isPractice,
        group,
        type,
      ];

  $CreateSessionBody copyWith({
    String Function()? photo,
    bool Function()? isPractice,
    $SessionGroup Function()? group,
    $SessionType Function()? type,
  }) {
    return $CreateSessionBody(
      photo: photo != null ? photo() : this.photo,
      isPractice: isPractice != null ? isPractice() : this.isPractice,
      group: group != null ? group() : this.group,
      type: type != null ? type() : this.type,
    );
  }
}

@serializable
class $CreateSessionResponse extends Equatable {
  final $Session? data;
  final $ErrorResponse? error;
  const $CreateSessionResponse({
    required this.data,
    this.error,
  });

  factory $CreateSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$$CreateSessionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$$CreateSessionResponseToJson(this);

  @override
  List<Object?> get props => [
        data,
        error,
      ];

  $CreateSessionResponse copyWith({
    $Session? Function()? data,
    $ErrorResponse? Function()? error,
  }) {
    return $CreateSessionResponse(
      data: data != null ? data() : this.data,
      error: error != null ? error() : this.error,
    );
  }
}

@serializable
class $GetUserResponse extends Equatable {
  final $UserInfo? data;
  final $ErrorResponse? error;
  const $GetUserResponse({
    required this.data,
    this.error,
  });

  factory $GetUserResponse.fromJson(Map<String, dynamic> json) =>
      _$$GetUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$$GetUserResponseToJson(this);

  @override
  List<Object?> get props => [
        data,
        error,
      ];

  $GetUserResponse copyWith({
    $UserInfo? Function()? data,
    $ErrorResponse? Function()? error,
  }) {
    return $GetUserResponse(
      data: data != null ? data() : this.data,
      error: error != null ? error() : this.error,
    );
  }
}

@serializable
class $ListSessionResponse extends Equatable {
  final List<$Session>? data;
  final $ErrorResponse? error;
  const $ListSessionResponse({
    required this.data,
    this.error,
  });

  factory $ListSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$$ListSessionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$$ListSessionResponseToJson(this);

  @override
  List<Object?> get props => [
        data,
        error,
      ];

  $ListSessionResponse copyWith({
    List<$Session>? Function()? data,
    $ErrorResponse? Function()? error,
  }) {
    return $ListSessionResponse(
      data: data != null ? data() : this.data,
      error: error != null ? error() : this.error,
    );
  }
}

@serializable
class $QuerySessionResponse extends Equatable {
  final $QuerySessionData? data;
  final $ErrorResponse? error;
  const $QuerySessionResponse({
    required this.data,
    this.error,
  });

  factory $QuerySessionResponse.fromJson(Map<String, dynamic> json) =>
      _$$QuerySessionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$$QuerySessionResponseToJson(this);

  @override
  List<Object?> get props => [
        data,
        error,
      ];

  $QuerySessionResponse copyWith({
    $QuerySessionData? Function()? data,
    $ErrorResponse? Function()? error,
  }) {
    return $QuerySessionResponse(
      data: data != null ? data() : this.data,
      error: error != null ? error() : this.error,
    );
  }
}

@serializable
class $RecordedFile extends Equatable {
  final String assetId;
  final DateTime recordedAt;
  const $RecordedFile({
    required this.assetId,
    required this.recordedAt,
  });

  factory $RecordedFile.fromJson(Map<String, dynamic> json) =>
      _$$RecordedFileFromJson(json);

  Map<String, dynamic> toJson() => _$$RecordedFileToJson(this);

  @override
  List<Object?> get props => [
        assetId,
        recordedAt,
      ];

  $RecordedFile copyWith({
    String Function()? assetId,
    DateTime Function()? recordedAt,
  }) {
    return $RecordedFile(
      assetId: assetId != null ? assetId() : this.assetId,
      recordedAt: recordedAt != null ? recordedAt() : this.recordedAt,
    );
  }
}

@serializable
class $SignInBody extends Equatable {
  final String username;
  final String password;
  const $SignInBody({
    required this.username,
    required this.password,
  });

  factory $SignInBody.fromJson(Map<String, dynamic> json) =>
      _$$SignInBodyFromJson(json);

  Map<String, dynamic> toJson() => _$$SignInBodyToJson(this);

  @override
  List<Object?> get props => [
        username,
        password,
      ];

  $SignInBody copyWith({
    String Function()? username,
    String Function()? password,
  }) {
    return $SignInBody(
      username: username != null ? username() : this.username,
      password: password != null ? password() : this.password,
    );
  }
}

@serializable
class $SignInResponse extends Equatable {
  final $AuthInfo? data;
  final $ErrorResponse? error;
  const $SignInResponse({
    required this.data,
    this.error,
  });

  factory $SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$$SignInResponseFromJson(json);

  Map<String, dynamic> toJson() => _$$SignInResponseToJson(this);

  @override
  List<Object?> get props => [
        data,
        error,
      ];

  $SignInResponse copyWith({
    $AuthInfo? Function()? data,
    $ErrorResponse? Function()? error,
  }) {
    return $SignInResponse(
      data: data != null ? data() : this.data,
      error: error != null ? error() : this.error,
    );
  }
}

@serializable
class $SubmitSessionBody extends Equatable {
  final List<$Answer> answers;
  const $SubmitSessionBody({
    required this.answers,
  });

  factory $SubmitSessionBody.fromJson(Map<String, dynamic> json) =>
      _$$SubmitSessionBodyFromJson(json);

  Map<String, dynamic> toJson() => _$$SubmitSessionBodyToJson(this);

  @override
  List<Object?> get props => [
        answers,
      ];

  $SubmitSessionBody copyWith({
    List<$Answer> Function()? answers,
  }) {
    return $SubmitSessionBody(
      answers: answers != null ? answers() : this.answers,
    );
  }
}

@serializable
class $SubmitSessionResponse extends Equatable {
  final String? data;
  final $ErrorResponse? error;
  const $SubmitSessionResponse({
    required this.data,
    this.error,
  });

  factory $SubmitSessionResponse.fromJson(Map<String, dynamic> json) =>
      _$$SubmitSessionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$$SubmitSessionResponseToJson(this);

  @override
  List<Object?> get props => [
        data,
        error,
      ];

  $SubmitSessionResponse copyWith({
    String? Function()? data,
    $ErrorResponse? Function()? error,
  }) {
    return $SubmitSessionResponse(
      data: data != null ? data() : this.data,
      error: error != null ? error() : this.error,
    );
  }
}

@serializable
class $Asset extends Equatable {
  final String id;
  const $Asset({
    required this.id,
  });

  factory $Asset.fromJson(Map<String, dynamic> json) => _$$AssetFromJson(json);

  Map<String, dynamic> toJson() => _$$AssetToJson(this);

  @override
  List<Object?> get props => [
        id,
      ];

  $Asset copyWith({
    String Function()? id,
  }) {
    return $Asset(
      id: id != null ? id() : this.id,
    );
  }
}

@serializable
class $AuthInfo extends Equatable {
  final String token;
  final $UserInfo userInfo;
  const $AuthInfo({
    required this.token,
    required this.userInfo,
  });

  factory $AuthInfo.fromJson(Map<String, dynamic> json) =>
      _$$AuthInfoFromJson(json);

  Map<String, dynamic> toJson() => _$$AuthInfoToJson(this);

  @override
  List<Object?> get props => [
        token,
        userInfo,
      ];

  $AuthInfo copyWith({
    String Function()? token,
    $UserInfo Function()? userInfo,
  }) {
    return $AuthInfo(
      token: token != null ? token() : this.token,
      userInfo: userInfo != null ? userInfo() : this.userInfo,
    );
  }
}

@serializable
class $ErrorResponse extends Equatable {
  final String code;
  final String message;
  const $ErrorResponse({
    required this.code,
    required this.message,
  });

  factory $ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$$ErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$$ErrorResponseToJson(this);

  @override
  List<Object?> get props => [
        code,
        message,
      ];

  $ErrorResponse copyWith({
    String Function()? code,
    String Function()? message,
  }) {
    return $ErrorResponse(
      code: code != null ? code() : this.code,
      message: message != null ? message() : this.message,
    );
  }
}

@serializable
class $QuerySessionData extends Equatable {
  final List<$Exam> results;
  const $QuerySessionData({
    required this.results,
  });

  factory $QuerySessionData.fromJson(Map<String, dynamic> json) =>
      _$$QuerySessionDataFromJson(json);

  Map<String, dynamic> toJson() => _$$QuerySessionDataToJson(this);

  @override
  List<Object?> get props => [
        results,
      ];

  $QuerySessionData copyWith({
    List<$Exam> Function()? results,
  }) {
    return $QuerySessionData(
      results: results != null ? results() : this.results,
    );
  }
}

@serializable
class $Session extends Equatable {
  final String id;
  final $SessionStatus status;
  final $SessionGroup group;
  final $SessionType type;
  final int quota;
  const $Session({
    required this.id,
    required this.status,
    required this.group,
    required this.type,
    required this.quota,
  });

  factory $Session.fromJson(Map<String, dynamic> json) =>
      _$$SessionFromJson(json);

  Map<String, dynamic> toJson() => _$$SessionToJson(this);

  @override
  List<Object?> get props => [
        id,
        status,
        group,
        type,
        quota,
      ];

  $Session copyWith({
    String Function()? id,
    $SessionStatus Function()? status,
    $SessionGroup Function()? group,
    $SessionType Function()? type,
    int Function()? quota,
  }) {
    return $Session(
      id: id != null ? id() : this.id,
      status: status != null ? status() : this.status,
      group: group != null ? group() : this.group,
      type: type != null ? type() : this.type,
      quota: quota != null ? quota() : this.quota,
    );
  }
}

@serializable
class $UserInfo extends Equatable {
  final int userId;
  final String? firstName;
  final String? lastName;
  final String? school;
  final String? district;
  final String? province;
  final bool consentAccepted;
  const $UserInfo({
    required this.userId,
    required this.firstName,
    required this.lastName,
    required this.school,
    required this.district,
    required this.province,
    required this.consentAccepted,
  });

  factory $UserInfo.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$$UserInfoToJson(this);

  @override
  List<Object?> get props => [
        userId,
        firstName,
        lastName,
        school,
        district,
        province,
        consentAccepted,
      ];

  $UserInfo copyWith({
    int Function()? userId,
    String? Function()? firstName,
    String? Function()? lastName,
    String? Function()? school,
    String? Function()? district,
    String? Function()? province,
    bool Function()? consentAccepted,
  }) {
    return $UserInfo(
      userId: userId != null ? userId() : this.userId,
      firstName: firstName != null ? firstName() : this.firstName,
      lastName: lastName != null ? lastName() : this.lastName,
      school: school != null ? school() : this.school,
      district: district != null ? district() : this.district,
      province: province != null ? province() : this.province,
      consentAccepted:
          consentAccepted != null ? consentAccepted() : this.consentAccepted,
    );
  }
}

@serializable
class $Exam extends Equatable {
  final int id;
  final String slug;
  final int duration;
  final String group;
  final $ExamType type;
  final String? questionTitle;
  final String? questionText;
  final String? questionImage;
  final String questionDialogue1Speaker;
  final String questionDialogue1Text;
  final String questionDialogue2Speaker;
  final String questionDialogue2Text;
  final String questionDialogue3Speaker;
  final String questionDialogue3Text;
  final String? questionAudio;
  final String? questionVideo;
  final String? answerTitle;
  final String? answerDescription;
  final String answerOption1Text;
  final String answerOption2Text;
  final String answerOption3Text;
  final String? answerAudio;
  final String? answerChoice;
  final String? answerText;
  final int? maxPlayingTime;
  final int? maxSpeakingTime;
  final int? minSpeakingDuration;
  final int? maxSpeakingDuration;
  final int? minWords;
  final int? maxWords;
  const $Exam({
    required this.id,
    required this.slug,
    required this.duration,
    required this.group,
    required this.type,
    required this.questionTitle,
    required this.questionText,
    required this.questionImage,
    required this.questionDialogue1Speaker,
    required this.questionDialogue1Text,
    required this.questionDialogue2Speaker,
    required this.questionDialogue2Text,
    required this.questionDialogue3Speaker,
    required this.questionDialogue3Text,
    required this.questionAudio,
    required this.questionVideo,
    required this.answerTitle,
    required this.answerDescription,
    required this.answerOption1Text,
    required this.answerOption2Text,
    required this.answerOption3Text,
    required this.answerAudio,
    required this.answerChoice,
    required this.answerText,
    required this.maxPlayingTime,
    required this.maxSpeakingTime,
    required this.minSpeakingDuration,
    required this.maxSpeakingDuration,
    required this.minWords,
    required this.maxWords,
  });

  factory $Exam.fromJson(Map<String, dynamic> json) => _$$ExamFromJson(json);

  Map<String, dynamic> toJson() => _$$ExamToJson(this);

  @override
  List<Object?> get props => [
        id,
        slug,
        duration,
        group,
        type,
        questionTitle,
        questionText,
        questionImage,
        questionDialogue1Speaker,
        questionDialogue1Text,
        questionDialogue2Speaker,
        questionDialogue2Text,
        questionDialogue3Speaker,
        questionDialogue3Text,
        questionAudio,
        questionVideo,
        answerTitle,
        answerDescription,
        answerOption1Text,
        answerOption2Text,
        answerOption3Text,
        answerAudio,
        answerChoice,
        answerText,
        maxPlayingTime,
        maxSpeakingTime,
        minSpeakingDuration,
        maxSpeakingDuration,
        minWords,
        maxWords,
      ];

  $Exam copyWith({
    int Function()? id,
    String Function()? slug,
    int Function()? duration,
    String Function()? group,
    $ExamType Function()? type,
    String? Function()? questionTitle,
    String? Function()? questionText,
    String? Function()? questionImage,
    String Function()? questionDialogue1Speaker,
    String Function()? questionDialogue1Text,
    String Function()? questionDialogue2Speaker,
    String Function()? questionDialogue2Text,
    String Function()? questionDialogue3Speaker,
    String Function()? questionDialogue3Text,
    String? Function()? questionAudio,
    String? Function()? questionVideo,
    String? Function()? answerTitle,
    String? Function()? answerDescription,
    String Function()? answerOption1Text,
    String Function()? answerOption2Text,
    String Function()? answerOption3Text,
    String? Function()? answerAudio,
    String? Function()? answerChoice,
    String? Function()? answerText,
    int? Function()? maxPlayingTime,
    int? Function()? maxSpeakingTime,
    int? Function()? minSpeakingDuration,
    int? Function()? maxSpeakingDuration,
    int? Function()? minWords,
    int? Function()? maxWords,
  }) {
    return $Exam(
      id: id != null ? id() : this.id,
      slug: slug != null ? slug() : this.slug,
      duration: duration != null ? duration() : this.duration,
      group: group != null ? group() : this.group,
      type: type != null ? type() : this.type,
      questionTitle:
          questionTitle != null ? questionTitle() : this.questionTitle,
      questionText: questionText != null ? questionText() : this.questionText,
      questionImage:
          questionImage != null ? questionImage() : this.questionImage,
      questionDialogue1Speaker: questionDialogue1Speaker != null
          ? questionDialogue1Speaker()
          : this.questionDialogue1Speaker,
      questionDialogue1Text: questionDialogue1Text != null
          ? questionDialogue1Text()
          : this.questionDialogue1Text,
      questionDialogue2Speaker: questionDialogue2Speaker != null
          ? questionDialogue2Speaker()
          : this.questionDialogue2Speaker,
      questionDialogue2Text: questionDialogue2Text != null
          ? questionDialogue2Text()
          : this.questionDialogue2Text,
      questionDialogue3Speaker: questionDialogue3Speaker != null
          ? questionDialogue3Speaker()
          : this.questionDialogue3Speaker,
      questionDialogue3Text: questionDialogue3Text != null
          ? questionDialogue3Text()
          : this.questionDialogue3Text,
      questionAudio:
          questionAudio != null ? questionAudio() : this.questionAudio,
      questionVideo:
          questionVideo != null ? questionVideo() : this.questionVideo,
      answerTitle: answerTitle != null ? answerTitle() : this.answerTitle,
      answerDescription: answerDescription != null
          ? answerDescription()
          : this.answerDescription,
      answerOption1Text: answerOption1Text != null
          ? answerOption1Text()
          : this.answerOption1Text,
      answerOption2Text: answerOption2Text != null
          ? answerOption2Text()
          : this.answerOption2Text,
      answerOption3Text: answerOption3Text != null
          ? answerOption3Text()
          : this.answerOption3Text,
      answerAudio: answerAudio != null ? answerAudio() : this.answerAudio,
      answerChoice: answerChoice != null ? answerChoice() : this.answerChoice,
      answerText: answerText != null ? answerText() : this.answerText,
      maxPlayingTime:
          maxPlayingTime != null ? maxPlayingTime() : this.maxPlayingTime,
      maxSpeakingTime:
          maxSpeakingTime != null ? maxSpeakingTime() : this.maxSpeakingTime,
      minSpeakingDuration: minSpeakingDuration != null
          ? minSpeakingDuration()
          : this.minSpeakingDuration,
      maxSpeakingDuration: maxSpeakingDuration != null
          ? maxSpeakingDuration()
          : this.maxSpeakingDuration,
      minWords: minWords != null ? minWords() : this.minWords,
      maxWords: maxWords != null ? maxWords() : this.maxWords,
    );
  }
}

enum $SessionGroup {
  @JsonValue('ENGLISH')
  english,
  @JsonValue('DIGITAL')
  digital,
}

enum $SessionType {
  @JsonValue('CORE')
  core,
  @JsonValue('SPEAKING')
  speaking,
  @JsonValue('WRITING')
  writing,
}

enum $SessionStatus {
  @JsonValue('OPENED')
  opened,
  @JsonValue('CLOSED')
  closed,
}

enum $ExamType {
  @JsonValue('LISTENING')
  listening,
  @JsonValue('VOCABULARY')
  vocabulary,
  @JsonValue('SPEAKING')
  speaking,
  @JsonValue('GRAMMAR')
  grammar,
  @JsonValue('READING')
  reading,
  @JsonValue('WRITING')
  writing,
}

class $SignInRequest {
  final $SignInBody body;
  $SignInRequest({
    required this.body,
  });

  $SignInBody toJsonData() {
    return body;
  }
}

class $CreateAssetRequest {
  final $CreateAssetBody body;
  $CreateAssetRequest({
    required this.body,
  });

  FormData toFormData() {
    return FormData.fromMap({
      'file': MultipartFile.fromFileSync(body.file.path),
    });
  }
}

class $CreateSessionRequest {
  final $CreateSessionBody body;
  $CreateSessionRequest({
    required this.body,
  });

  $CreateSessionBody toJsonData() {
    return body;
  }
}

class $QuerySessionRequest {
  final String sessionId;
  $QuerySessionRequest({
    required this.sessionId,
  });
}

class $SubmitSessionRequest {
  final String sessionId;
  final $SubmitSessionBody body;
  $SubmitSessionRequest({
    required this.sessionId,
    required this.body,
  });

  $SubmitSessionBody toJsonData() {
    return body;
  }
}

class $CloseSessionRequest {
  final String sessionId;
  final $CloseSessionBody body;
  $CloseSessionRequest({
    required this.sessionId,
    required this.body,
  });

  $CloseSessionBody toJsonData() {
    return body;
  }
}

abstract class _$SampleRepository {
  final Dio dio;
  final Logger logger;

  _$SampleRepository({
    required this.dio,
    Logger? logger,
  }) : logger = logger ?? Logger("SampleRepository");

  Future<$SignInResponse> signIn(
    $SignInRequest param,
  ) async {
    try {
      final response = await dio.post(
        "/api/v1/odos/user:sign-in",
        data: param.toJsonData(),
      );
      return $SignInResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        logger.warning("received status code ${e.response!.statusCode}");
      }
      if (e.response != null &&
          [400, 404, 422].contains(e.response!.statusCode)) {
        return $SignInResponse.fromJson(e.response!.data);
      } else {
        rethrow;
      }
    } on Exception catch (e) {
      throw SampleRepositoryUnhandledException(e);
    }
  }

  Future<$GetUserResponse> getUser() async {
    try {
      final response = await dio.get(
        "/api/v1/odos/user",
      );
      return $GetUserResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        logger.warning("received status code ${e.response!.statusCode}");
      }
      if (e.response != null &&
          [400, 404, 422].contains(e.response!.statusCode)) {
        return $GetUserResponse.fromJson(e.response!.data);
      } else {
        rethrow;
      }
    } on Exception catch (e) {
      throw SampleRepositoryUnhandledException(e);
    }
  }

  Future<$AcceptConsentResponse> acceptConsent() async {
    try {
      final response = await dio.post(
        "/api/v1/odos/user:accept-consent",
      );
      return $AcceptConsentResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        logger.warning("received status code ${e.response!.statusCode}");
      }
      if (e.response != null &&
          [400, 404, 422].contains(e.response!.statusCode)) {
        return $AcceptConsentResponse.fromJson(e.response!.data);
      } else {
        rethrow;
      }
    } on Exception catch (e) {
      throw SampleRepositoryUnhandledException(e);
    }
  }

  Future<$CreateAssetResponse> createAsset(
    $CreateAssetRequest param,
  ) async {
    try {
      final response = await dio.post(
        "/api/v1/odos/assets",
        data: param.toFormData(),
      );
      return $CreateAssetResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        logger.warning("received status code ${e.response!.statusCode}");
      }
      if (e.response != null &&
          [400, 404, 422].contains(e.response!.statusCode)) {
        return $CreateAssetResponse.fromJson(e.response!.data);
      } else {
        rethrow;
      }
    } on Exception catch (e) {
      throw SampleRepositoryUnhandledException(e);
    }
  }

  Future<$ListSessionResponse> listSession() async {
    try {
      final response = await dio.get(
        "/api/v1/odos/sessions",
      );
      return $ListSessionResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        logger.warning("received status code ${e.response!.statusCode}");
      }
      if (e.response != null &&
          [400, 404, 422].contains(e.response!.statusCode)) {
        return $ListSessionResponse.fromJson(e.response!.data);
      } else {
        rethrow;
      }
    } on Exception catch (e) {
      throw SampleRepositoryUnhandledException(e);
    }
  }

  Future<$CreateSessionResponse> createSession(
    $CreateSessionRequest param,
  ) async {
    try {
      final response = await dio.post(
        "/api/v1/odos/sessions",
        data: param.toJsonData(),
      );
      return $CreateSessionResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        logger.warning("received status code ${e.response!.statusCode}");
      }
      if (e.response != null &&
          [400, 404, 422].contains(e.response!.statusCode)) {
        return $CreateSessionResponse.fromJson(e.response!.data);
      } else {
        rethrow;
      }
    } on Exception catch (e) {
      throw SampleRepositoryUnhandledException(e);
    }
  }

  Future<$QuerySessionResponse> querySession(
    $QuerySessionRequest param,
  ) async {
    try {
      final response = await dio.post(
        "/api/v1/odos/sessions/${param.sessionId}:query",
      );
      return $QuerySessionResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        logger.warning("received status code ${e.response!.statusCode}");
      }
      if (e.response != null &&
          [400, 404, 422].contains(e.response!.statusCode)) {
        return $QuerySessionResponse.fromJson(e.response!.data);
      } else {
        rethrow;
      }
    } on Exception catch (e) {
      throw SampleRepositoryUnhandledException(e);
    }
  }

  Future<$SubmitSessionResponse> submitSession(
    $SubmitSessionRequest param,
  ) async {
    try {
      final response = await dio.post(
        "/api/v1/odos/sessions/${param.sessionId}:submit",
        data: param.toJsonData(),
      );
      return $SubmitSessionResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        logger.warning("received status code ${e.response!.statusCode}");
      }
      if (e.response != null &&
          [400, 404, 422].contains(e.response!.statusCode)) {
        return $SubmitSessionResponse.fromJson(e.response!.data);
      } else {
        rethrow;
      }
    } on Exception catch (e) {
      throw SampleRepositoryUnhandledException(e);
    }
  }

  Future<$CloseSessionResponse> closeSession(
    $CloseSessionRequest param,
  ) async {
    try {
      final response = await dio.post(
        "/api/v1/odos/sessions/${param.sessionId}:close",
        data: param.toJsonData(),
      );
      return $CloseSessionResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        logger.warning("received status code ${e.response!.statusCode}");
      }
      if (e.response != null &&
          [400, 404, 422].contains(e.response!.statusCode)) {
        return $CloseSessionResponse.fromJson(e.response!.data);
      } else {
        rethrow;
      }
    } on Exception catch (e) {
      throw SampleRepositoryUnhandledException(e);
    }
  }
}

sealed class SampleRepositoryException implements Exception {
  Exception exception;

  SampleRepositoryException(this.exception);

  @override
  String toString() {
    return exception.toString();
  }
}

class SampleRepositoryUnhandledException extends SampleRepositoryException {
  SampleRepositoryUnhandledException(super.exception);
}
