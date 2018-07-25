<#import "template.ftl" as layout>
<@layout.mainLayout active='account' bodyClass='user'; section>

    <div class="row">
        <div class="col-md-10">
            <h2>${msg("editAccountHtmlTitle")}</h2>
        </div>
        <div class="col-md-2 subtitle">
            <span class="subtitle"><span class="required">*</span> ${msg("requiredFields")}</span>
        </div>
    </div>
    <div class="row">
      <div class="col-md-10">

      <form action="${url.accountUrl}" class="form-horizontal" method="post">

          <input type="hidden" id="stateChecker" name="stateChecker" value="${stateChecker}">

          <#if !realm.registrationEmailAsUsername>
              <div class="form-group ${messagesPerField.printIfExists('username','has-error')}">
                <label for="username" class="field-label">${msg("username")}</label> <#if realm.editUsernameAllowed><span class="required">*</span></#if>
                <input type="text" class="form-control" id="username" name="username" <#if !realm.editUsernameAllowed>disabled="disabled"</#if> value="${(account.username!'')}"/>
              </div>
          </#if>

          <div class="form-group ${messagesPerField.printIfExists('email','has-error')}">
              <label for="email" class="field-label">${msg("email")}</label> <span class="required">*</span>
              <input type="text" class="form-control" id="email" name="email" autofocus value="${(account.email!'')}"/>
          </div>

          <div class="form-group ${messagesPerField.printIfExists('firstName','has-error')}">
            <label for="firstName" class="field-label">${msg("firstName")}</label> <span class="required">*</span>
            <input type="text" class="form-control" id="firstName" name="firstName" value="${(account.firstName!'')}"/>
          </div>

          <div class="form-group ${messagesPerField.printIfExists('lastName','has-error')}">
              <label for="lastName" class="field-label">${msg("lastName")}</label> <span class="required">*</span>
              <input type="text" class="form-control" id="lastName" name="lastName" value="${(account.lastName!'')}"/>
          </div>

          <div class="form-group">
              <div id="kc-form-buttons" class="col-md-offset-2 col-md-10 submit">
                  <div class="">
                      <#if url.referrerURI??><a href="${url.referrerURI}">${msg("backToApplication")?no_esc}/a></#if>
                      <button type="submit" class="ccc ${properties.primaryBtn!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}" name="submitAction" value="Save">${msg("doSave")}</button>
                      <button type="submit" class="btn btn-gray" name="submitAction" value="Cancel">${msg("doCancel")}</button>
                  </div>
              </div>
          </div>
      </form>

      </div>
    </div>


</@layout.mainLayout>
